import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/horizontal_divider.dart';
import 'package:portfolio/widgets/web/my_skills/programming_skills.dart';
import 'package:portfolio/widgets/web/my_skills/software_skills.dart';

import '../../../config/assets_path.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: w/9),
      child: Column(
        children: [
          Text(
            "Skills",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(child: ProgrammingSkills()),
              HorizontalDivider(height: h/1.2),
              const Expanded(child: SoftwareSkills()),
            ],
          ),
        ],
      ),
    );
  }
}
