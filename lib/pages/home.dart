import 'package:alarm/alarm.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wakevoice/router/app_router.gr.dart';
import 'package:wakevoice/utils/alarm_permissions.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    if (Alarm.android) {
      AlarmPermissions.checkAndroidNotificationPermission();
      AlarmPermissions.checkAndroidScheduleExactAlarmPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // list of your tab routes
      // routes used here must be declared as children
      // routes of /dashboard
      routes: const [
        InsertRoute(),
        ListRoute(),
        AlarmRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        // the passed child is technically our animated selected-tab page
        child: child,
      ),
      builder: (context, child) {
        // obtain the scoped TabsRouter controller using context
        final tabsRouter = AutoTabsRouter.of(context);
        // Here we're building our Scaffold inside of AutoTabsRouter
        // to access the tabsRouter controller provided in this context
        //
        // alternatively, you could use a global key
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              // here we switch between tabs
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Insert',
                icon: Icon(Icons.edit),
              ),
              BottomNavigationBarItem(
                label: 'List',
                icon: Icon(Icons.list),
              ),
              BottomNavigationBarItem(
                label: 'Alarm',
                icon: Icon(Icons.alarm),
              ),
            ],
          ),
        );
      },
    );
  }
}
