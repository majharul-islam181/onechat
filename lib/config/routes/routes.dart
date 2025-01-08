import 'package:flutter/material.dart';

import '../../views/login/login_page.dart';
import '../../views/onboarding/welcome_page.dart';
import 'routes_name.dart';

class Routes {
/*************  ✨ Codeium Command ⭐  *************/
  /// Generates a route based on the given [RouteSettings].
  ///
  /// This method takes a [RouteSettings] object, which contains the name
  /// of the route and possibly some arguments, and returns a [MaterialPageRoute]
  /// for the corresponding page. If the route name matches one of the predefined
  /// cases (e.g., onboardingScreen, loginScreen), it navigates to the relevant
  /// page. If no matching route is found, it returns a default route with a
  /// 'No route defined' message.

/******  7a4fead2-24cf-45aa-a03d-1bd6f800496e  *******/ static Route<dynamic>
      generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case RoutesName.showAllProduct:
      //   final categoryId = settings.arguments as String;
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => ProductList(
      //             categoryId: categoryId,
      //           ));

      // case RoutesName.productScreen:
      //   final productId = settings.arguments as String;
      //   final categoryId = settings.arguments as String;
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => ProductScreen(
      //             productId: productId,
      //             categoryId: categoryId,
      //           ));

      case RoutesName.onboardingScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const WelcomePage());

      case RoutesName.loginScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage());

      case RoutesName.loginScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
