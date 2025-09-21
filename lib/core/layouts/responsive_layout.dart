import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Base class cho responsive layout
class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile ||
        ResponsiveBreakpoints.of(context).isPhone) {
      return mobile;
    } else if (ResponsiveBreakpoints.of(context).isTablet) {
      return tablet ?? mobile;
    } else {
      return desktop ?? tablet ?? mobile;
    }
  }
}
