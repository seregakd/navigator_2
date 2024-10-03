import 'package:auto_route/auto_route.dart';
import 'package:navigator_2/router/router.gr.dart';

import 'auth_guard.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  final authGuard = AuthGuard();

  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  late final List<AutoRouteGuard> guards = [authGuard];

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: FirstRoute.page,
              path: 'first',
            ),
            AutoRoute(
              path: 'second',
              page: SecondRoute.page,
            ),
            AutoRoute(page: ThirdRoute.page),
          ],
        ),
        AutoRoute(
          page: ProfileRoute.page,
          guards: [AuthGuard()],
        ),
        AutoRoute(
          page: ProfileSettingsRoute.page,
          guards: [AuthGuard()],
        ),
        AutoRoute(
          page: NextRoute.page,
        ),
        AutoRoute(
          page: LoginRoute.page,
        ),
      ];
}
