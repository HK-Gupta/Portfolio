import 'package:flutter/material.dart';
import 'package:portfolio/config/assets_path.dart';
import 'package:portfolio/widgets/buttons/primary_button.dart';


class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 180),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          ),
          Column(
            children: [
              Image.asset(
                  ImagePath.myPic,
                width: 450,
                height: 450,
              ),
              const SizedBox(height: 40,),
            ],
          )
        ],
      ),
    );
  }
}
