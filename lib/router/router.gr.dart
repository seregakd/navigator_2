// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:navigator_2/pages/first_page.dart' as _i1;
import 'package:navigator_2/pages/home_page.dart' as _i2;
import 'package:navigator_2/pages/login_page.dart' as _i3;
import 'package:navigator_2/pages/next_page.dart' as _i4;
import 'package:navigator_2/pages/profile_page.dart' as _i5;
import 'package:navigator_2/pages/profile_settings_page.dart' as _i6;
import 'package:navigator_2/pages/second_page.dart' as _i7;
import 'package:navigator_2/pages/third_page.dart' as _i8;

/// generated route for
/// [_i1.FirstPage]
class FirstRoute extends _i9.PageRouteInfo<void> {
  const FirstRoute({List<_i9.PageRouteInfo>? children})
      : super(
          FirstRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.FirstPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i10.Key? key,
    void Function(bool)? onLoginResult,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onLoginResult: onLoginResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return _i3.LoginPage(
        key: args.key,
        onLoginResult: args.onLoginResult,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.onLoginResult,
  });

  final _i10.Key? key;

  final void Function(bool)? onLoginResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLoginResult: $onLoginResult}';
  }
}

/// generated route for
/// [_i4.NextPage]
class NextRoute extends _i9.PageRouteInfo<void> {
  const NextRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NextRoute.name,
          initialChildren: children,
        );

  static const String name = 'NextRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.NextPage();
    },
  );
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfilePage();
    },
  );
}

/// generated route for
/// [_i6.ProfileSettingsPage]
class ProfileSettingsRoute extends _i9.PageRouteInfo<void> {
  const ProfileSettingsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileSettingsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.ProfileSettingsPage();
    },
  );
}

/// generated route for
/// [_i7.SecondPage]
class SecondRoute extends _i9.PageRouteInfo<SecondRouteArgs> {
  SecondRoute({
    _i10.Key? key,
    required String title,
    required int text,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SecondRoute.name,
          args: SecondRouteArgs(
            key: key,
            title: title,
            text: text,
          ),
          initialChildren: children,
        );

  static const String name = 'SecondRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SecondRouteArgs>();
      return _i7.SecondPage(
        key: args.key,
        title: args.title,
        text: args.text,
      );
    },
  );
}

class SecondRouteArgs {
  const SecondRouteArgs({
    this.key,
    required this.title,
    required this.text,
  });

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
  ThirdRoute({
    _i10.Key? key,
    required String title,
    required String text,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          ThirdRoute.name,
          args: ThirdRouteArgs(
            key: key,
            title: title,
            text: text,
          ),
          initialChildren: children,
        );

  static const String name = 'ThirdRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ThirdRouteArgs>();
      return _i8.ThirdPage(
        key: args.key,
        title: args.title,
        text: args.text,
      );
    },
  );
}

class ThirdRouteArgs {
  const ThirdRouteArgs({
    this.key,
    required this.title,
    required this.text,
  });

  final _i10.Key? key;

  final String title;

  final String text;

  @override
  String toString() {
    return 'ThirdRouteArgs{key: $key, title: $title, text: $text}';
  }
}
