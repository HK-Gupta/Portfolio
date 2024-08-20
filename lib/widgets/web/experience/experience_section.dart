import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/experience/flutter_data.dart';
import 'package:portfolio/widgets/web/experience/java_kotlin_data.dart';

import '../horizontal_divider.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w/20),
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Text(
              "Personal Projects",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(child: FlutterData()),
                HorizontalDivider(height: h,),
                const Expanded(child: JavaKotlinData()),
              ],
            ),
            const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
