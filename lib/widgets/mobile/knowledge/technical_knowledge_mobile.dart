import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mobile/knowledge/knowledge_details_mobile.dart';
import 'package:portfolio/widgets/mobile/knowledge/knowledge_details_mobile.dart';
import 'package:portfolio/widgets/mobile/knowledge/knowledge_details_mobile.dart';
import 'package:portfolio/widgets/web/knowledge/knowledge_details.dart';

class TechnicalKnowledgeMobile extends StatelessWidget {
  const TechnicalKnowledgeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          " Technical: ",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const KnowledgeDetailsMobile(knowledge: "Software Architecture (MVVM, MVC, MVP)"),
        const KnowledgeDetailsMobile(knowledge: "API Design & Integration (REST API)"),
        const KnowledgeDetailsMobile(knowledge: "Database & Cloud Management"),
        const KnowledgeDetailsMobile(knowledge: "FireBase Authentication"),
        const KnowledgeDetailsMobile(knowledge: "Testing & Debugging"),
        const KnowledgeDetailsMobile(knowledge: "Continuous Integration/Continuous Deployment (CI/CD)"),
      ],
    );
  }
}
