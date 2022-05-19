// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../pages/first_page.dart' as _i6;
import '../pages/home_page.dart' as _i1;
import '../pages/login_page.dart' as _i4;
import '../pages/next_page.dart' as _i3;
import '../pages/profile_page.dart' as _i2;
import '../pages/profile_settings_page.dart' as _i5;
import '../pages/second_page.dart' as _i7;
import '../pages/third_page.dart' as _i8;
import 'auth_guard.dart' as _i11;

class AppRouter extends _i9.RootStackRouter {
  AppRouter(
      {_i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ProfilePage());
    },
    NextRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NextPage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i4.LoginPage(key: args.key, onLoginResult: args.onLoginResult));
    },
    ProfileSettingsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfileSettingsPage());
    },
    FirstRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.FirstPage());
    },
    SecondRoute.name: (routeData) {
      final args = routeData.argsAs<SecondRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.SecondPage(
              key: args.key, title: args.title, text: args.text));
    },
    ThirdRoute.name: (routeData) {
      final args = routeData.argsAs<ThirdRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i8.ThirdPage(key: args.key, title: args.title, text: args.text));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i9.RouteConfig(HomeRoute.name, path: '/home', children: [
          _i9.RouteConfig(FirstRoute.name,
              path: 'first-page', parent: HomeRoute.name),
          _i9.RouteConfig(SecondRoute.name,
              path: 'second', parent: HomeRoute.name),
          _i9.RouteConfig(ThirdRoute.name,
              path: 'third-page', parent: HomeRoute.name)
        ]),
        _i9.RouteConfig(ProfileRoute.name,
            path: '/profile-page', guards: [authGuard]),
        _i9.RouteConfig(NextRoute.name, path: '/next-page'),
        _i9.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i9.RouteConfig(ProfileSettingsRoute.name,
            path: '/profile-settings-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i3.NextPage]
class NextRoute extends _i9.PageRouteInfo<void> {
  const NextRoute() : super(NextRoute.name, path: '/next-page');

  static const String name = 'NextRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i10.Key? key, void Function(bool)? onLoginResult})
      : super(LoginRoute.name,
            path: '/login-page',
            args: LoginRouteArgs(key: key, onLoginResult: onLoginResult));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key, this.onLoginResult});

  final _i10.Key? key;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [_i5.ProfileSettingsPage]
class ProfileSettingsRoute extends _i9.PageRouteInfo<void> {
  const ProfileSettingsRoute()
      : super(ProfileSettingsRoute.name, path: '/profile-settings-page');

  static const String name = 'ProfileSettingsRoute';
}

/// generated route for
/// [_i6.FirstPage]
class FirstRoute extends _i9.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: 'first-page');

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i7.SecondPage]
class SecondRoute extends _i9.PageRouteInfo<SecondRouteArgs> {
  SecondRoute({_i10.Key? key, required String title, required int text})
      : super(SecondRoute.name,
            path: 'second',
            args: SecondRouteArgs(key: key, title: title, text: text));

  static const String name = 'SecondRoute';
}

class SecondRouteArgs {
  const SecondRouteArgs({this.key, required this.title, required this.text});

  final _i10.Key? key;

  final String title;

  final int text;

  @override
  String toString() {
    return 'SecondRouteArgs{key: $key, title: $title, text: $text}';
  }
}

/// generated route for
/// [_i8.ThirdPage]
class ThirdRoute extends _i9.PageRouteInfo<ThirdRouteArgs> {
  ThirdRoute({_i10.Key? key, required String title, required String text})
      : super(ThirdRoute.name,
            path: 'third-page',
            args: ThirdRouteArgs(key: key, title: title, text: text));

  static const String name = 'ThirdRoute';
}

class ThirdRouteArgs {
  const ThirdRouteArgs({this.key, required this.title, required this.text});

  final _i10.Key? key;

  final String title;

  final String text;

  @override
  String toString() {
    return 'ThirdRouteArgs{key: $key, title: $title, text: $text}';
  }
}
