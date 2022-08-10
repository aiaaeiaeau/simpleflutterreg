import 'package:auto_route/auto_route.dart';
import 'package:example_three/pages/first_page.dart';
import 'package:example_three/pages/fourth_page.dart';
import 'package:example_three/pages/second_page.dart';
import 'package:example_three/pages/third_page.dart';

import '../pages/dashboard.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: FirstPage, initial: true, path: "/"),
    AutoRoute(page: SecondPage, path: "/second_page"),
    AutoRoute(page: ThirdPage, path: "/third_page"),
    AutoRoute(page: FourthPage, path: "/fourth_page"),
    AutoRoute(page: Dashboard, path: '/dashboard'),
  ],
)
class $AppRouter {}
