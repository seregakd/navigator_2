import 'package:auto_route/auto_route.dart';
import 'package:navigator_2/router/router.gr.dart';

bool isAuthenticated = false;

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isAuthenticated) {
      resolver.next(true);
    } else {
      router.push(LoginRoute(onLoginResult: (_){
        resolver.next();
        router.removeLast();
      }));
    }
  }
}