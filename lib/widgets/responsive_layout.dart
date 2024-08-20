import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveLayout({super.key, required this.mobile, required this.desktop});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return LayoutBuilder(
        builder: (context, constraints) {
          if(h*1.1 > w) {
            return mobile;
          } else {
            return desktop;
          }
        }
    );
  }
}
