import 'package:flutter/material.dart';
import 'package:portfolio/config/theme.dart';
import 'package:portfolio/view/home_page_view.dart';
import 'package:web_pointer/web_pointer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: darkTheme,
      home: const WebPointer(
        circleColor: Color(0xFF00DA64),
          roundColor: Color(0xFF00DA64),
          child: HomePageView()
      ),
    );
  }
}

// 15-8  -> 2:48
