// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../pages/first_page.dart' as _i4;
import '../pages/home_page.dart' as _i1;
import '../pages/next_page.dart' as _i3;
import '../pages/profile_page.dart' as _i2;
import '../pages/second_page.dart' as _i5;
import '../pages/third_page.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ProfilePage());
    },
    NextRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NextPage());
    },
    FirstRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.FirstPage());
    },
    SecondRoute.name: (routeData) {
      final args = routeData.argsAs<SecondRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.SecondPage(
              key: args.key, title: args.title, text: args.text));
    },
    ThirdRoute.name: (routeData) {
      final args = routeData.argsAs<ThirdRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i6.ThirdPage(key: args.key, title: args.title, text: args.text));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i7.RouteConfig(HomeRoute.name, path: '/home', children: [
          _i7.RouteConfig(FirstRoute.name,
              path: 'first-page', parent: HomeRoute.name),
          _i7.RouteConfig(SecondRoute.name,
              path: 'second-page', parent: HomeRoute.name),
          _i7.RouteConfig(ThirdRoute.name,
              path: 'third-page', parent: HomeRoute.name)
        ]),
        _i7.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i7.RouteConfig(NextRoute.name, path: '/next-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.ProfilePage]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i3.NextPage]
class NextRoute extends _i7.PageRouteInfo<void> {
  const NextRoute() : super(NextRoute.name, path: '/next-page');

  static const String name = 'NextRoute';
}

/// generated route for
/// [_i4.FirstPage]
class FirstRoute extends _i7.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: 'first-page');

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i5.SecondPage]
class SecondRoute extends _i7.PageRouteInfo<SecondRouteArgs> {
  SecondRoute({_i8.Key? key, required String title, required int text})
      : super(SecondRoute.name,
            path: 'second-page',
            args: SecondRouteArgs(key: key, title: title, text: text));

  static const String name = 'SecondRoute';
}

class SecondRouteArgs {
  const SecondRouteArgs({this.key, required this.title, required this.text});

  final _i8.Key? key;

  final String title;

  final int text;

  @override
  String toString() {
    return 'SecondRouteArgs{key: $key, title: $title, text: $text}';
  }
}

/// generated route for
/// [_i6.ThirdPage]
class ThirdRoute extends _i7.PageRouteInfo<ThirdRouteArgs> {
  ThirdRoute({_i8.Key? key, required String title, required String text})
      : super(ThirdRoute.name,
            path: 'third-page',
            args: ThirdRouteArgs(key: key, title: title, text: text));

  static const String name = 'ThirdRoute';
}

class ThirdRouteArgs {
  const ThirdRouteArgs({this.key, required this.title, required this.text});

  final _i8.Key? key;

  final String title;

  final String text;

  @override
  String toString() {
    return 'ThirdRouteArgs{key: $key, title: $title, text: $text}';
  }
}
