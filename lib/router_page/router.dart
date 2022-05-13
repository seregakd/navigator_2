import 'package:auto_route/auto_route.dart';
import 'package:navigator_2/pages/first_page.dart';
import 'package:navigator_2/pages/home_page.dart';
import 'package:navigator_2/pages/next_page.dart';
import 'package:navigator_2/pages/profile_page.dart';
import 'package:navigator_2/pages/second_page.dart';
import 'package:navigator_2/pages/third_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
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
        AutoRoute(page: SecondPage),
        AutoRoute(page: ThirdPage),
      ],
      initial: true,
    ),
    AutoRoute(
      page: ProfilePage,
    ),
    AutoRoute(
      page: NextPage,
    ),
  ],
)

class $AppRouter {}
