import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/knowledge/hobby_details.dart';
import 'package:portfolio/widgets/web/knowledge/language_details.dart';

import '../my_skills/my_linear_progress_indicator.dart';

class LanguageKnowledge extends StatelessWidget {
  const LanguageKnowledge({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: w/100),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: w/7,),
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
          const Column(
            children: [
              HobbyDetails(hobby: "Competitive Programming"),
              HobbyDetails(hobby: "Coding & Open Source Contribution"),
              HobbyDetails(hobby: "Learning New Technologies"),
              HobbyDetails(hobby: "Problem-Solving Puzzles & Brain Teasers"),
            ],
          )



        ],
      ),
    );
  }
}
