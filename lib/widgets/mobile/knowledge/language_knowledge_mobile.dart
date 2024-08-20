import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mobile/knowledge/hobby_details_mobile.dart';
import 'package:portfolio/widgets/mobile/knowledge/language_details_mobile.dart';
import 'package:portfolio/widgets/web/knowledge/language_details.dart';

class LanguageKnowledgeMobile extends StatelessWidget {
  const LanguageKnowledgeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30,),
        Text(
          " Language: ",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 10,),
        const LanguageDetailsMobile(language: "English", level: 16,),
        const SizedBox(height: 10,),
        const LanguageDetailsMobile(language: "Hindi", level: 19,),
        const SizedBox(height: 40,),

        // Hobby Part
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hobbies",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(width: 20,)
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HobbyDetailsMobile(hobby: "Playing"),
            HobbyDetailsMobile(hobby: "Playing"),
            SizedBox()
          ],
        ),
        const SizedBox(height: 10,),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HobbyDetailsMobile(hobby: "Playing"),
            HobbyDetailsMobile(hobby: "Playing"),
            SizedBox()
          ],
        )
      ],
    );
  }
}
