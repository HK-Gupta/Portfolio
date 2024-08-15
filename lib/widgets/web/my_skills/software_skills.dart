import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/my_skills/my_linear_progress_indicator.dart';

class SoftwareSkills extends StatelessWidget {
  const SoftwareSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Software",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
        const MyLinearProgressIndicator(
            skill: "Java",
            percentage: 0.7,
            desc: "70"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Java",
            percentage: 0.7,
            desc: "70"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Java",
            percentage: 0.7,
            desc: "70"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Java",
            percentage: 0.7,
            desc: "70"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Java",
            percentage: 0.7,
            desc: "70"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Java",
            percentage: 0.7,
            desc: "70"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Java",
            percentage: 0.7,
            desc: "70"
        ),
      ],
    );
  }
}
