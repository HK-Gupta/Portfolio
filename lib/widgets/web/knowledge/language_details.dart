import 'package:flutter/material.dart';

class LanguageDetails extends StatelessWidget {
  final String language;
  final int level;
  const LanguageDetails({super.key, required this.language, required this.level});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    int val = level;
    return Padding(
      padding: EdgeInsets.only(left: w/30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(language, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 7,),
          Row(
            children: List.generate(10, (index) {
                val -= 2;
                return Container(
                  width: w/60,
                  height: w/60,
                  margin: EdgeInsets.symmetric(horizontal: 4), // Add some spacing between the containers
                  decoration: BoxDecoration(
                    color: val<=0?Theme.of(context).colorScheme.onPrimary:
                        val==1? Theme.of(context).colorScheme.primary.withOpacity(0.15):
                        Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(100),
                  ),
                );
              }
            ),
          )

        ],
      ),
    );
  }
}
