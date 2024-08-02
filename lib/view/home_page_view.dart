import 'package:flutter/material.dart';
import 'package:portfolio/pages/desktop/home_page_web.dart';
import 'package:portfolio/pages/mobile/home_page_mobile.dart';
import 'package:portfolio/widgets/responsive_layout.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobile: const HomePageMobile(),
        desktop: const HomePageWeb()
    );
  }
}
