import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mobile/my_service/service_widget_mobile.dart';

import '../../web/my_service/service_widget.dart';

class MyServiceMobile extends StatelessWidget {
  const MyServiceMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "My Services",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 50,),
              const Row(
                children: [
                  Expanded(
                    child: ServiceWidgetMobile(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI.",
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ServiceWidgetMobile(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI.",
                    ),
                  )

                ],
              ),
              const SizedBox(height: 25,),
              const Row(
                children: [
                  Expanded(
                    child: ServiceWidgetMobile(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI.",
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ServiceWidgetMobile(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI.",
                    ),
                  )

                ],
              ),
              const SizedBox(height: 25,),
              const Row(
                children: [
                  Expanded(
                    child: ServiceWidgetMobile(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI.",
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ServiceWidgetMobile(
                      icon: Icons.android,
                      title: "App Development",
                      desc: "I am a passionate Android developer skilled in Flutter, Kotlin, and Java. Experienced in building high-performance applications with intuitive UI.",
                    ),
                  )

                ],
              ),
              const SizedBox(height: 40,)
            ]
          )
      )
    );
  }
}
