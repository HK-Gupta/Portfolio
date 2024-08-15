import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyLinearProgressIndicator extends StatelessWidget {
  final String skill;
  final double percentage;
  final String desc;
  const MyLinearProgressIndicator({super.key, required this.skill, required this.percentage, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(" $skill"),
          const SizedBox(height: 2,),
          Row(
            children: [
              Expanded(
                child: LinearPercentIndicator(
                  // width: 200,
                  lineHeight: 15,
                  percent: percentage,
                  barRadius: const Radius.circular(7),
                  animation: true,
                  animationDuration: 1500,
                  backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                  progressColor: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(width: 10,),
              Text(
                "$desc%",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ],
      ),
    );
  }
}
