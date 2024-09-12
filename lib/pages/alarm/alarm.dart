import 'dart:async';

import 'package:alarm/alarm.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wakevoice/pages/alarm/alarm_tile.dart';
import 'package:wakevoice/pages/alarm/edit_alarm.dart';
import 'package:wakevoice/pages/alarm/shortcut_button_alarm.dart';
import 'package:wakevoice/router/app_router.dart';
import 'package:wakevoice/router/app_router.gr.dart';

@RoutePage()
class AlarmPage extends ConsumerStatefulWidget {
  const AlarmPage({super.key});

  @override
  ConsumerState<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends ConsumerState<AlarmPage> {
  late List<AlarmSettings> alarms;

  static StreamSubscription<AlarmSettings>? subscription;

  @override
  void initState() {
    super.initState();
    // if (Alarm.android) {
    //   checkAndroidNotificationPermission();
    //   checkAndroidScheduleExactAlarmPermission();
    // }
    loadAlarms();
    subscription ??= Alarm.ringStream.stream.listen(
      (AlarmSettings alarmSettings) {
        ref
            .watch(appRouterProvider)
            .push(RingAlarmRoute(alarmSettings: alarmSettings));

        loadAlarms();
      },
    );
  }

  void loadAlarms() {
    setState(() {
      alarms = Alarm.getAlarms();
      alarms.sort((a, b) => a.dateTime.isBefore(b.dateTime) ? 0 : 1);
    });
  }

  Future<void> navigateToAlarmScreen(AlarmSettings? settings) async {
    final res = await showModalBottomSheet<bool?>(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.75,
          child: EditAlarmPage(alarmSettings: settings),
        );
      },
    );

    if (res != null && res == true) loadAlarms();
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('alarm 3.1.5')),
      body: SafeArea(
        child: alarms.isNotEmpty
            ? ListView.separated(
                itemCount: alarms.length,
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  return ExampleAlarmTile(
                    key: Key(alarms[index].id.toString()),
                    title: TimeOfDay(
                      hour: alarms[index].dateTime.hour,
                      minute: alarms[index].dateTime.minute,
                    ).format(context),
                    onPressed: () => navigateToAlarmScreen(alarms[index]),
                    onDismissed: () {
                      Alarm.stop(alarms[index].id).then((_) => loadAlarms());
                    },
                  );
                },
              )
            : Center(
                child: Text(
                  'No alarms set',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShortcutButtonAlarm(refreshAlarms: loadAlarms),
            FloatingActionButton(
              onPressed: () => navigateToAlarmScreen(null),
              child: const Icon(Icons.alarm_add_rounded, size: 33),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
