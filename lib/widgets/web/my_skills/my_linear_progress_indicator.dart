import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyLinearProgressIndicator extends StatelessWidget {
  final String skill;
  final double percentage;
  final String desc;
  const MyLinearProgressIndicator({super.key, required this.skill, required this.percentage, required this.desc});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: w/20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(" $skill"),
          const SizedBox(height: 2,),
          Row(
            children: [
              LinearPercentIndicator(
                width: w/3.5,
                lineHeight: w/150,
                percent: percentage,
                barRadius: const Radius.circular(7),
                animation: true,
                animationDuration: 1500,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                progressColor: Theme.of(context).colorScheme.primary,
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
