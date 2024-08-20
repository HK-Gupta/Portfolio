import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/knowledge/knowledge_details.dart';

class TechnicalKnowledge extends StatelessWidget {
  const TechnicalKnowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Technical",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 30,),
        const KnowledgeDetails(knowledge: "Software Architecture (MVVM, MVC, MVP)"),
        const KnowledgeDetails(knowledge: "API Design & Integration (REST API)"),
        const KnowledgeDetails(knowledge: "Database & Cloud Management"),
        const KnowledgeDetails(knowledge: "FireBase Authentication"),
        const KnowledgeDetails(knowledge: "Testing & Debugging"),
        const KnowledgeDetails(knowledge: "Continuous Integration/Continuous Deployment (CI/CD)"),
      ],
    );
  }
}
