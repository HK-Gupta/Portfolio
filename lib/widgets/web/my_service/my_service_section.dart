import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/my_service/service_widget.dart';

class MyServiceSection extends StatelessWidget {
  const MyServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
        child: Column(
          children: [
            Text(
              "My Services",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 50,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ServiceWidget(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI.",
                    )
                ),
                SizedBox(width: 20,),
                Expanded(
                    child: ServiceWidget(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI.",
                    )
                ),
                SizedBox(width: 20,),
                Expanded(
                    child: ServiceWidget(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI and seamless functionality.",
                    )
                ),
                SizedBox(width: 20,),

              ],
            ),
            const SizedBox(height: 70,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ServiceWidget(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI.",
                    )
                ),
                SizedBox(width: 20,),
                Expanded(
                    child: ServiceWidget(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI.",
                    )
                ),
                SizedBox(width: 20,),
                Expanded(
                    child: ServiceWidget(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI and seamless functionality.",
                    )
                ),
                SizedBox(width: 20,),

              ],
            ),
            const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
