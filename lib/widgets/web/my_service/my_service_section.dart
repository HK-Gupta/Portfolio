import 'package:flutter/material.dart';
import 'package:portfolio/config/assets_path.dart';
import 'package:portfolio/widgets/web/my_service/service_widget.dart';

class MyServiceSection extends StatelessWidget {
  const MyServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: w/25, vertical: 50),
        child: Column(
          children: [
            Text(
              "My Services",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ServiceWidget(
                      icon: IconPath.flutter,
                      title: "Mobile App Development",
                      desc: "I specialize in creating cross-platform mobile applications using Flutter, ensuring seamless performance and consistent user experience across both Android and iOS platforms.",
                    )
                ),
                const SizedBox(width: 25,),
                Expanded(
                    child: ServiceWidget(
                      icon: IconPath.android,
                      title: "Native Android Development",
                      desc: "As an experienced Android developer, I build custom native Android applications using Kotlin and Java, focusing on performance, scalability, and user-centric design.",
                    )
                ),
                const SizedBox(width: 25,),
                Expanded(
                    child: ServiceWidget(
                      icon: IconPath.design,
                      title: "UI/UX Design",
                      desc: "I craft intuitive and visually engaging user interfaces that enhance user interaction and satisfaction, combining creativity with the latest design principles to deliver top-tier user experiences.",
                    )
                ),
                const SizedBox(width: 25,),

              ],
            ),
            const SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ServiceWidget(
                      icon: IconPath.backend,
                      title: "Backend Development",
                      desc: "I develop robust and secure backend systems using Node.js, Express, and MongoDB, enabling smooth API integration, real-time data processing, and reliable application performance.",
                    )
                ),
                const SizedBox(width: 25,),
                Expanded(
                    child: ServiceWidget(
                      icon: IconPath.firebase,
                      title: "Firebase Integration",
                      desc: "I integrate Firebase services to power real-time data handling, user authentication, and cloud functions, delivering responsive and scalable applications with seamless user experiences.",
                    )
                ),
                const SizedBox(width: 25,),
                Expanded(
                    child: ServiceWidget(
                      icon: IconPath.appMaintain,
                      title: "App Maintenance & Support",
                      desc: "I provide ongoing app maintenance and support, ensuring your applications remain up-to-date, secure, and optimized for peak performance, with regular updates and bug fixes.",
                    )
                ),
                const SizedBox(width: 25,),

              ],
            ),
            const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
