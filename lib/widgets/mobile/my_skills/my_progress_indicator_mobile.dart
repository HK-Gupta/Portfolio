import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyProgressIndicatorMobile extends StatelessWidget {
  final double percentage;
  final String label;
  final String skill;
  const MyProgressIndicatorMobile({super.key, required this.percentage, required this.label, required this.skill});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CircularPercentIndicator(
          radius: w/7.7,
          lineWidth: w/50,
          animation: true,
          animationDuration: 1500,
          percent: percentage,
          center: Text(
            "$label%",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: Theme.of(context).colorScheme.primary,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        ),
        const SizedBox(height: 7,),
        Text(
          skill,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
