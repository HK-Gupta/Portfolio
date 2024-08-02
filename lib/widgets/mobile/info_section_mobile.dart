import 'package:flutter/material.dart';

import '../../config/assets_path.dart';
import '../buttons/primary_button.dart';

class InfoSectionMobile extends StatelessWidget {
  const InfoSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Image.asset(
            ImagePath.myPic,
            width: 350,
            height: 350,
          ),
          const SizedBox(height: 20,),
          Text(
            "Hello I'm Harsh Kumar\nApp Developer & Final Year Student",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 5,),
          Text(
            "I am Harsh Kumar. I have excellent skills in app development and am a proficient problem solver. Additionally, I am a competitive programmer with knowledge of machine learning.",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              PrimaryButton(
                btnName: "Hire Me",
                onTap: () {},
              ),
              const SizedBox(width: 25),
              PrimaryButton(
                btnName: "Get Resume",
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
