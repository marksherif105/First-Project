import 'package:go_router/go_router.dart';
import 'package:real_project/app/routes.dart';
import 'package:real_project/presentation/screens/productDetailsScreen.dart';
import 'package:real_project/presentation/screens/productScreen.dart';
import 'package:real_project/presentation/screens/signUpScreen.dart';

import '../presentation/screens/authoScreen.dart';
import '../presentation/screens/loginScreen.dart';

class AppRouter {
  static final GoRouter appRouter = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        name: Routes.logInScreen,
        builder: (context, state) {
          return loginScreen();
        },
      ),
      GoRoute(
        path: "/${Routes.signUpScreen}",
        name: Routes.signUpScreen,
        builder: (context, state) {
          return signUpScreen();
        },
      ),
      GoRoute(
        path: "/${Routes.authoScreen}",
        name: Routes.authoScreen,
        builder: (context, state) {
          return authoScreen();
        },
      ),
      GoRoute(
        path: "/${Routes.productScreen}",
        name: Routes.productScreen,
        builder: (context, state) {
          return productScreen();
        },
      ),
      GoRoute(
        path: "/${Routes.productDetailsScreen}",
        name: Routes.productDetailsScreen,
        builder: (context, state) {
          return productDetailsScreen();
        },
      ),
    ],
  );
}
