import 'package:auto_route/auto_route.dart';
import 'package:navigator_2/pages/first_page.dart';
import 'package:navigator_2/pages/home_page.dart';
import 'package:navigator_2/pages/login_page.dart';
import 'package:navigator_2/pages/next_page.dart';
import 'package:navigator_2/pages/profile_page.dart';
import 'package:navigator_2/pages/profile_settings_page.dart';
import 'package:navigator_2/pages/second_page.dart';
import 'package:navigator_2/pages/third_page.dart';

import 'auth_guard.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    // AutoRoute(page: HomePage, initial: true),
    AutoRoute(
      path: '/home',
      page: HomePage,
      children: [
        AutoRoute(
          page: FirstPage,
          path: 'first-page',
        ),
        AutoRoute(
            name: 'SecondRoute',
            path: 'second',
            page: SecondPage,
        ),
        AutoRoute(page: ThirdPage),
      ],
      initial: true,
    ),
    AutoRoute(
      page: ProfilePage,
      guards: [AuthGuard]
    ),
    AutoRoute(
      page: NextPage,
    ),
    AutoRoute(
      page: LoginPage,
    ),
    AutoRoute(
      page: ProfileSettingsPage,
    ),
  ],
)

class $AppRouter {}
