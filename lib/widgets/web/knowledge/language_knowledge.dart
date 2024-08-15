import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/knowledge/hobby_details.dart';
import 'package:portfolio/widgets/web/knowledge/language_details.dart';

import '../my_skills/my_linear_progress_indicator.dart';

class LanguageKnowledge extends StatelessWidget {
  const LanguageKnowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Language",
                style: Theme.of(context).textTheme.bodyLarge,
            ),

          ],
        ),
        const SizedBox(height: 20,),
        const LanguageDetails(language: "English", level: 16,),
        const SizedBox(height: 20,),
        const LanguageDetails(language: "Hindi", level: 19,),
        const SizedBox(height: 40,),

        // Hobby Part
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hobby",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(width: 20,)
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HobbyDetails(hobby: "Playing"),
            HobbyDetails(hobby: "Playing"),
            SizedBox()
          ],
        ),
        const SizedBox(height: 10,),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HobbyDetails(hobby: "Playing"),
            HobbyDetails(hobby: "Playing"),
            SizedBox()
          ],
        )
      ],
    );
  }
}
