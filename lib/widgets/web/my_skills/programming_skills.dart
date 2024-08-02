import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/my_skills/my_progress_indicator.dart';

class ProgrammingSkills extends StatelessWidget {
  const ProgrammingSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Programming",
          style: TextStyle(fontSize: 22),
        ),
        SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyProgressIndicator(
                percentage: 0.7,
                label: "70",
              skill: "C/C++",
            ),
            MyProgressIndicator(
                percentage: 0.8,
                label: "80",
              skill: "Python",
            ),

          ],
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyProgressIndicator(
                percentage: 0.7,
                label: "70",
              skill: "C/C++",
            ),
            MyProgressIndicator(
                percentage: 0.8,
                label: "80",
              skill: "Python",
            ),

          ],
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyProgressIndicator(
                percentage: 0.7,
                label: "70",
              skill: "C/C++",
            ),
            MyProgressIndicator(
                percentage: 0.8,
                label: "80",
              skill: "Python",
            ),

          ],
        ),
        SizedBox(height: 50,),
      ],
    );
  }
}
