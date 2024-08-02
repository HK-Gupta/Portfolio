import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyProgressIndicator extends StatelessWidget {
  final double percentage;
  final String label;
  final String skill;
  const MyProgressIndicator({super.key, required this.percentage, required this.label, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: 60.0,
          lineWidth: 10.0,
          animation: true,
          animationDuration: 2000,
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
