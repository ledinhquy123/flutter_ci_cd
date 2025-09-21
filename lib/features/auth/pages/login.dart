import 'package:app_mariana_3211/core/layouts/responsive_layout.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobile: Placeholder(),
        tablet: Placeholder(),
        desktop: Placeholder(),
      ),
    );
  }
}
