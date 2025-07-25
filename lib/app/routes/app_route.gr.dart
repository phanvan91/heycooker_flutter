// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:heycooker_flutter/screen/intro/intro_page.dart' as _i1;
import 'package:heycooker_flutter/screen/main/main_page.dart' as _i2;
import 'package:heycooker_flutter/screen/my_pantry/my_pantry.dart' as _i3;
import 'package:heycooker_flutter/screen/splash/splash_page.dart' as _i4;

/// generated route for
/// [_i1.IntroPage]
class IntroRoute extends _i5.PageRouteInfo<void> {
  const IntroRoute({List<_i5.PageRouteInfo>? children})
      : super(IntroRoute.name, initialChildren: children);

  static const String name = 'IntroRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.IntroPage();
    },
  );
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainPage();
    },
  );
}

/// generated route for
/// [_i3.MyPantry]
class MyPantry extends _i5.PageRouteInfo<void> {
  const MyPantry({List<_i5.PageRouteInfo>? children})
      : super(MyPantry.name, initialChildren: children);

  static const String name = 'MyPantry';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.MyPantry();
    },
  );
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SplashPage();
    },
  );
}
