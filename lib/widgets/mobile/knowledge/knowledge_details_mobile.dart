import 'package:flutter/material.dart';

class KnowledgeDetailsMobile extends StatelessWidget {
  final String knowledge;
  const KnowledgeDetailsMobile({super.key, required this.knowledge});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.done_all_rounded, color: Theme.of(context).colorScheme.primary,),
            const SizedBox(width: 5,),
            SizedBox(
              width: w/1.5,
              child: Text(
                knowledge,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.5,
                  overflow: TextOverflow.ellipsis
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
