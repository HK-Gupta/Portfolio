import 'package:flutter/material.dart';
import 'package:portfolio/widgets/hover_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: HoverEffect(
          builder: (value) {
            return Text(
              "Temp",
              style: TextStyle(
                color: value? Colors.pink: Colors.yellow
              ),
            );
          },
        )
      ),
    );
  }
}
