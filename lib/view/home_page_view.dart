import 'package:flutter/material.dart';
import 'package:portfolio/pages/desktop/home_page_web.dart';
import 'package:portfolio/pages/mobile/home_page_mobile.dart';
import 'package:portfolio/widgets/responsive_layout.dart';
import 'package:web_pointer/web_pointer.dart';
class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobile: HomePageMobile(),
        desktop: WebPointer(
            circleColor: Color(0xFF00DA64),
            roundColor: Color(0xFF00DA64),
            child: HomePageWeb()
        ),
    );
  }
}
