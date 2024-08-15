import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/experience/flutter_data.dart';
import 'package:portfolio/widgets/web/experience/java_kotlin_data.dart';

import '../my_skills/horizontal_divider.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 180),
      child: Column(
        children: [
          Text(
            "Personal Projects",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 30,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: FlutterData()),
              HorizontalDivider(height: 770,),
              Expanded(child: JavaKotlinData()),
            ],
          ),
          const SizedBox(height: 50,),
        ],
      ),
    );
  }
}
