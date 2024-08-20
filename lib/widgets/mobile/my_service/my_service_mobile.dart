import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mobile/my_service/service_widget_mobile.dart';

import '../../../config/assets_path.dart';
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
              const SizedBox(height: 30,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ServiceWidgetMobile(
                        icon: IconPath.flutter,
                        title: "Mobile App Development",
                        desc: "I specialize in creating cross-platform mobile applications using Flutter, ensuring seamless performance and consistent user experience across both Android and iOS platforms.",
                      )
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                      child: ServiceWidgetMobile(
                        icon: IconPath.android,
                        title: "Native Android Development",
                        desc: "As an experienced Android developer, I build custom native Android applications using Kotlin and Java, focusing on performance, scalability, and user-centric design.",
                      )
                  ),

                ],
              ),
              const SizedBox(height: 25,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ServiceWidgetMobile(
                        icon: IconPath.design,
                        title: "UI/UX Design",
                        desc: "I craft intuitive and visually engaging user interfaces that enhance user interaction and satisfaction, combining creativity with the latest design principles to deliver top-tier user experiences.",
                      )
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                      child: ServiceWidgetMobile(
                        icon: IconPath.backend,
                        title: "Backend Development",
                        desc: "I develop robust and secure backend systems using Node.js, Express, and MongoDB, enabling smooth API integration, real-time data processing, and reliable application performance.",
                      )
                  ),

                ],
              ),
              const SizedBox(height: 25,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: ServiceWidgetMobile(
                        icon: IconPath.firebase,
                        title: "Firebase Integration",
                        desc: "I integrate Firebase services to power real-time data handling, user authentication, and cloud functions, delivering responsive and scalable applications with seamless user experiences.",
                      )
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                      child: ServiceWidgetMobile(
                        icon: IconPath.appMaintain,
                        title: "App Maintenance & Support",
                        desc: "I provide ongoing app maintenance and support, ensuring your applications remain up-to-date, secure, and optimized for peak performance, with regular updates and bug fixes.",
                      )
                  ),

                ],
              ),
              const SizedBox(height: 40,)
            ]
          )
      )
    );
  }
}
