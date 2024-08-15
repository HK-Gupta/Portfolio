import 'package:flutter/material.dart';

class KnowledgeDetails extends StatelessWidget {
  final String knowledge;
  const KnowledgeDetails({super.key, required this.knowledge});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18,),
        Row(
          children: [
            const SizedBox(width: 50,),
            Icon(Icons.done_all_rounded, color: Theme.of(context).colorScheme.primary,),
            const SizedBox(width: 20,),
            Text(
              knowledge,
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        )
      ],
    );
  }
}
