import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mobile/my_service/service_widget_mobile.dart';
import 'package:portfolio/widgets/mobile/my_skills/programming_skills_mobile.dart';
import 'package:portfolio/widgets/mobile/my_skills/software_skills_mobile.dart';
import 'package:portfolio/widgets/mobile/vertical_divider.dart';

import '../../web/my_service/service_widget.dart';

class MySkillsMobile extends StatelessWidget {
  const MySkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
            children: [
              Text(
                "Skills",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 20,),
              const ProgrammingSkillsMobile(),
              MyVerticalDivider(width: w),
              const SizedBox(height: 20,),
              const SoftwareSkillsMobile()

            ]
        ),
    );
  }
}
