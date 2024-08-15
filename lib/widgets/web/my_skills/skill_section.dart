import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/my_skills/horizontal_divider.dart';
import 'package:portfolio/widgets/web/my_skills/programming_skills.dart';
import 'package:portfolio/widgets/web/my_skills/software_skills.dart';

import '../../../config/assets_path.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 180),
      child: Column(
        children: [
          Text(
            "Skills",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 30,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: ProgrammingSkills()),
              HorizontalDivider(height: 600),
              Expanded(child: SoftwareSkills()),
            ],
          ),
        ],
      ),
    );
  }
}
