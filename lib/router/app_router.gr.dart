// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:alarm/alarm.dart' as _i9;
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:wakevoice/pages/alarm/alarm.dart' as _i1;
import 'package:wakevoice/pages/alarm/edit_alarm.dart' as _i2;
import 'package:wakevoice/pages/alarm/ring_alarm.dart' as _i6;
import 'package:wakevoice/pages/home.dart' as _i3;
import 'package:wakevoice/pages/insert.dart' as _i4;
import 'package:wakevoice/pages/list.dart' as _i5;

/// generated route for
/// [_i1.AlarmPage]
class AlarmRoute extends _i7.PageRouteInfo<void> {
  const AlarmRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AlarmRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlarmRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.AlarmPage();
    },
  );
}

/// generated route for
/// [_i2.EditAlarmPage]
class EditAlarmRoute extends _i7.PageRouteInfo<EditAlarmRouteArgs> {
  EditAlarmRoute({
    _i8.Key? key,
    _i9.AlarmSettings? alarmSettings,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          EditAlarmRoute.name,
          args: EditAlarmRouteArgs(
            key: key,
            alarmSettings: alarmSettings,
          ),
          initialChildren: children,
        );

  static const String name = 'EditAlarmRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditAlarmRouteArgs>(
          orElse: () => const EditAlarmRouteArgs());
      return _i2.EditAlarmPage(
        key: args.key,
        alarmSettings: args.alarmSettings,
      );
    },
  );
}

class EditAlarmRouteArgs {
  const EditAlarmRouteArgs({
    this.key,
    this.alarmSettings,
  });

  final _i8.Key? key;

  final _i9.AlarmSettings? alarmSettings;

  @override
  String toString() {
    return 'EditAlarmRouteArgs{key: $key, alarmSettings: $alarmSettings}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.InsertPage]
class InsertRoute extends _i7.PageRouteInfo<void> {
  const InsertRoute({List<_i7.PageRouteInfo>? children})
      : super(
          InsertRoute.name,
          initialChildren: children,
        );

  static const String name = 'InsertRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.InsertPage();
    },
  );
}

/// generated route for
/// [_i5.ListPage]
class ListRoute extends _i7.PageRouteInfo<void> {
  const ListRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.ListPage();
    },
  );
}

/// generated route for
/// [_i6.RingAlarmPage]
class RingAlarmRoute extends _i7.PageRouteInfo<RingAlarmRouteArgs> {
  RingAlarmRoute({
    required _i9.AlarmSettings alarmSettings,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          RingAlarmRoute.name,
          args: RingAlarmRouteArgs(
            alarmSettings: alarmSettings,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RingAlarmRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RingAlarmRouteArgs>();
      return _i6.RingAlarmPage(
        alarmSettings: args.alarmSettings,
        key: args.key,
      );
    },
  );
}

class RingAlarmRouteArgs {
  const RingAlarmRouteArgs({
    required this.alarmSettings,
    this.key,
  });

  final _i9.AlarmSettings alarmSettings;

  final _i8.Key? key;

  @override
  String toString() {
    return 'RingAlarmRouteArgs{alarmSettings: $alarmSettings, key: $key}';
  }
}
