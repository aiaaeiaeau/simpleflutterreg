// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:example_three/pages/dashboard.dart' as _i5;
import 'package:example_three/pages/first_page.dart' as _i1;
import 'package:example_three/pages/fourth_page.dart' as _i4;
import 'package:example_three/pages/second_page.dart' as _i2;
import 'package:example_three/pages/third_page.dart' as _i3;
import 'package:flutter/material.dart' as _i7;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    FirstRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: _i1.FirstPage());
    },
    SecondRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: _i2.SecondPage());
    },
    ThirdRoute.name: (routeData) {
      final args = routeData.argsAs<ThirdRouteArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.ThirdPage(value: args.value, key: args.key));
    },
    FourthRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: _i4.FourthPage());
    },
    Dashboard.name: (routeData) {
      final args = routeData.argsAs<DashboardArgs>();
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i5.Dashboard(value: args.value, key: args.key));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(FirstRoute.name, path: '/'),
        _i6.RouteConfig(SecondRoute.name, path: '/second_page'),
        _i6.RouteConfig(ThirdRoute.name, path: '/third_page'),
        _i6.RouteConfig(FourthRoute.name, path: '/fourth_page'),
        _i6.RouteConfig(Dashboard.name, path: '/dashboard')
      ];
}

/// generated route for
/// [_i1.FirstPage]
class FirstRoute extends _i6.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: '/');

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i2.SecondPage]
class SecondRoute extends _i6.PageRouteInfo<void> {
  const SecondRoute() : super(SecondRoute.name, path: '/second_page');

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i3.ThirdPage]
class ThirdRoute extends _i6.PageRouteInfo<ThirdRouteArgs> {
  ThirdRoute({required String value, _i7.Key? key})
      : super(ThirdRoute.name,
            path: '/third_page', args: ThirdRouteArgs(value: value, key: key));

  static const String name = 'ThirdRoute';
}

class ThirdRouteArgs {
  const ThirdRouteArgs({required this.value, this.key});

  final String value;

  final _i7.Key? key;

  @override
  String toString() {
    return 'ThirdRouteArgs{value: $value, key: $key}';
  }
}

/// generated route for
/// [_i4.FourthPage]
class FourthRoute extends _i6.PageRouteInfo<void> {
  const FourthRoute() : super(FourthRoute.name, path: '/fourth_page');

  static const String name = 'FourthRoute';
}

/// generated route for
/// [_i5.Dashboard]
class Dashboard extends _i6.PageRouteInfo<DashboardArgs> {
  Dashboard({required String value, _i7.Key? key})
      : super(Dashboard.name,
            path: '/dashboard', args: DashboardArgs(value: value, key: key));

  static const String name = 'Dashboard';
}

class DashboardArgs {
  const DashboardArgs({required this.value, this.key});

  final String value;

  final _i7.Key? key;

  @override
  String toString() {
    return 'DashboardArgs{value: $value, key: $key}';
  }
}
