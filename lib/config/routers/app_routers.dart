import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'auth_routes.dart';

class AppRouters {
  AppRouters._();

  static final GoRouter routers = GoRouter(
    initialLocation: '/auth/login',
    // redirect: (context, state) {
    //   final String currrentPath = state.uri.path;
    //   final token = sl<SharedPrefsService>().getString(
    //     SharedPrefsKey.accessToken,
    //   );
    //   if (token == null || JwtDecoder.isExpired(token)) {
    //     return currrentPath.contains('/auth') ? null : '/auth/login';
    //   } else if (currrentPath.contains('/auth')) {
    //     return '/dashboard';
    //   }
    //   return null;
    // },
    routes: [
      // Auth routes
      AuthRoutes.routes,
    ],
  );
}

// Slide transition
CustomTransitionPage buildPageWithSlideTransition(
  Widget child,
  GoRouterState state,
) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}
