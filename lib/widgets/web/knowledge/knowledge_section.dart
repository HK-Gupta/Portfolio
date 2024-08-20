import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/knowledge/language_knowledge.dart';
import 'package:portfolio/widgets/web/knowledge/technical_knowledge.dart';

import '../horizontal_divider.dart';
import '../my_skills/programming_skills.dart';
import '../my_skills/software_skills.dart';

class KnowledgeSection extends StatelessWidget {
  const KnowledgeSection ({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w/40),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Text(
              "Knowledge",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(child: TechnicalKnowledge()),
                HorizontalDivider(height: h/1.8,),
                const Expanded(child: LanguageKnowledge()),
              ],
            ),
            const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
