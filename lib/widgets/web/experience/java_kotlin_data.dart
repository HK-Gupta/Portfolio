import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/experience/project_details.dart';

class JavaKotlinData extends StatelessWidget {
  const JavaKotlinData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Java/Kotlin",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectDetails(
                appName: "Android",
                subHeading: "Sub Heading",
                description: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI and seamless functionality.",
                onTap: () {},
              ),
              ProjectDetails(
                appName: "Android",
                subHeading: "Sub Heading",
                description: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI and seamless functionality.",
                onTap: () {},
              ),
              ProjectDetails(
                appName: "Android",
                subHeading: "Sub Heading",
                description: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI and seamless functionality.",
                onTap: () {},
              ),
              ProjectDetails(
                appName: "Android",
                subHeading: "Sub Heading",
                description: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI and seamless functionality.",
                onTap: () {},
              ),
              ProjectDetails(
                appName: "Android",
                subHeading: "Sub Heading",
                description: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI and seamless functionality.",
                onTap: () {},
              ),
              const SizedBox(height: 25,),
            ],
          ),
        ),
      ],
    );
  }
}