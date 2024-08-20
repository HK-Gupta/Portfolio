import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mobile/my_skills/my_progress_indicator_mobile.dart';
import 'package:portfolio/widgets/web/my_skills/my_progress_indicator.dart';

class ProgrammingSkillsMobile extends StatelessWidget {
  const ProgrammingSkillsMobile({super.key});

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
            MyProgressIndicatorMobile(
              percentage: 0.85,
              label: "85",
              skill: "C/C++",
            ),
            MyProgressIndicatorMobile(
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
            MyProgressIndicatorMobile(
              percentage: 0.75,
              label: "75",
              skill: "Java",
            ),
            MyProgressIndicatorMobile(
              percentage: 0.8,
              label: "80",
              skill: "MySQL",
            ),

          ],
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyProgressIndicatorMobile(
              percentage: 0.7,
              label: "70",
              skill: "Node.js",
            ),
            MyProgressIndicatorMobile(
              percentage: 0.65,
              label: "65",
              skill: "REST API",
            ),

          ],
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}
