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
            skill: "Android Studio",
            percentage: 0.9,
            desc: "90"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Firebase",
            percentage: 0.85,
            desc: "85"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Git/Github",
            percentage: 0.80,
            desc: "80"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Mongo DB",
            percentage: 0.7,
            desc: "70"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Matlab",
            percentage: 0.75,
            desc: "75"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Postman",
            percentage: 0.8,
            desc: "80"
        ),
        const SizedBox(height: 25,),
        const MyLinearProgressIndicator(
            skill: "Figma",
            percentage: 0.7,
            desc: "70"
        ),
      ],
    );
  }
}
