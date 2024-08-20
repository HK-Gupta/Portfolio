import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mobile/knowledge/language_knowledge_mobile.dart';
import 'package:portfolio/widgets/mobile/knowledge/technical_knowledge_mobile.dart';
import 'package:portfolio/widgets/web/knowledge/language_knowledge.dart';
import 'package:portfolio/widgets/web/knowledge/technical_knowledge.dart';


class KnowledgeSectionMobile extends StatelessWidget {
  const KnowledgeSectionMobile ({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w/9),
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Text(
              "Knowledge",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 10,),
            const TechnicalKnowledgeMobile(),
            const LanguageKnowledgeMobile(),
            const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
