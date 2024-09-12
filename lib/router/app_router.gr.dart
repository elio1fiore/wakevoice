// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:wakevoice/pages/home.dart' as _i1;
import 'package:wakevoice/pages/insert.dart' as _i2;
import 'package:wakevoice/pages/list.dart' as _i3;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomePage();
    },
  );
}

/// generated route for
/// [_i2.InsertPage]
class InsertRoute extends _i4.PageRouteInfo<void> {
  const InsertRoute({List<_i4.PageRouteInfo>? children})
      : super(
          InsertRoute.name,
          initialChildren: children,
        );

  static const String name = 'InsertRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.InsertPage();
    },
  );
}

/// generated route for
/// [_i3.ListPage]
class ListRoute extends _i4.PageRouteInfo<void> {
  const ListRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.ListPage();
    },
  );
}
