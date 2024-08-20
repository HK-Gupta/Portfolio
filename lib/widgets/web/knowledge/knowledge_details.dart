import 'package:flutter/material.dart';

class KnowledgeDetails extends StatelessWidget {
  final String knowledge;
  const KnowledgeDetails({super.key, required this.knowledge});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(height: 18,),
        Row(
          children: [
            SizedBox(width: w/200,),
            Icon(Icons.done_all_rounded, color: Theme.of(context).colorScheme.primary,),
            const SizedBox(width: 20,),
            SizedBox(
              width: w/2.7,
              child: Text(
                knowledge,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        )
      ],
    );
  }
}
