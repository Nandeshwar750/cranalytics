import 'package:flutter/material.dart';

class ResponsiveUtil extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const ResponsiveUtil({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final bool isLargeScreen = isDesktop(context);
    final bool isMediumScreen = isTablet(context);

    if (isLargeScreen) {
      return desktop;
    } else if (isMediumScreen && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}