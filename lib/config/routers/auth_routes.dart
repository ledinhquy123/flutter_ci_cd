import 'package:app_mariana_3211/features/auth/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routers.dart';

class AuthRoutes {
  AuthRoutes._();

  static final GoRoute routes = GoRoute(
    path: '/auth',
    pageBuilder: (context, state) =>
        buildPageWithSlideTransition(const SizedBox(), state),
    routes: [
      // Login Route
      GoRoute(
        path: 'login',
        pageBuilder: (context, state) =>
            buildPageWithSlideTransition(const LoginPage(), state),
      ),
    ],
  );
}
