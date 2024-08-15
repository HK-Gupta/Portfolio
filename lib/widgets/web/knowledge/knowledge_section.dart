import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/knowledge/language_knowledge.dart';
import 'package:portfolio/widgets/web/knowledge/technical_knowledge.dart';

import '../my_skills/horizontal_divider.dart';
import '../my_skills/programming_skills.dart';
import '../my_skills/software_skills.dart';

class KnowledgeSection extends StatelessWidget {
  const KnowledgeSection ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 180),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Text(
              "Knowledge",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 40,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: TechnicalKnowledge()),
                HorizontalDivider(height: 450,),
                Expanded(child: LanguageKnowledge()),
              ],
            ),
            const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
