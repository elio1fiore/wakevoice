import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wakevoice/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          path: "/",
          children: [
            AutoRoute(
              page: InsertRoute.page,
              path: 'insert',
              maintainState: false,
            ),
            AutoRoute(
              page: ListRoute.page,
              path: 'list',
              maintainState: false,
            ),
            // AutoRoute(
            //   page: AlarmRoute.page,
            //   path: 'alarm',
            // ),
            // AutoRoute(
            //   page: EditAlarmRoute.page,
            //   path: 'alarm-edit',
            // ),
            // AutoRoute(
            //   page: RingAlarmRoute.page,
            //   path: 'alarm-ring',
            // ),
          ],
        ),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}

final appRouterProvider = Provider(
  (ref) => AppRouter(),
);
