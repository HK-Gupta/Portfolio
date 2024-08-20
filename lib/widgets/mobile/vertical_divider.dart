import 'package:flutter/material.dart';

class MyVerticalDivider extends StatelessWidget {
  final double width;
  const MyVerticalDivider({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.5,
      width: width,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary
      ),
    );
  }
}
