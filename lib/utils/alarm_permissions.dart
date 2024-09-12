import 'dart:async';

import 'package:alarm/alarm.dart';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';

class AlarmPermissions {
  static Future<void> checkAndroidNotificationPermission() async {
    final status = await Permission.notification.status;
    if (status.isDenied) {
      if (kDebugMode) {
        alarmPrint('Requesting notification permission...');
      }
      final res = await Permission.notification.request();
      if (kDebugMode) {
        alarmPrint(
          'Notification permission ${res.isGranted ? '' : 'not '}granted',
        );
      }
    }
  }

  static Future<void> checkAndroidExternalStoragePermission() async {
    final status = await Permission.storage.status;
    if (status.isDenied) {
      if (kDebugMode) {
        alarmPrint('Requesting external storage permission...');
      }
      final res = await Permission.storage.request();
      if (kDebugMode) {
        alarmPrint(
          'External storage permission ${res.isGranted ? '' : 'not'} granted',
        );
      }
    }
  }

  static Future<void> checkAndroidScheduleExactAlarmPermission() async {
    final status = await Permission.scheduleExactAlarm.status;
    if (kDebugMode) {
      print('Schedule exact alarm permission: $status.');
    }
    if (status.isDenied) {
      if (kDebugMode) {
        print('Requesting schedule exact alarm permission...');
      }
      final res = await Permission.scheduleExactAlarm.request();
      if (kDebugMode) {
        print(
            'Schedule exact alarm permission ${res.isGranted ? '' : 'not'} granted.');
      }
    }
  }
}
