import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: w/9),
      child: Row(
        children: [
          Text(
            "HARSH",
            style: Theme.of(context).textTheme.headlineMedium,
          )
        ],
      ),
    );
  }
}
