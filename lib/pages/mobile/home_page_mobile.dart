import 'package:flutter/material.dart';
import 'package:portfolio/widgets/hover_widget.dart';
import 'package:portfolio/widgets/mobile/appbar_mobile.dart';
import 'package:portfolio/widgets/mobile/footer/footer_section_mobile.dart';
import 'package:portfolio/widgets/mobile/info_section_mobile.dart';
import 'package:portfolio/widgets/mobile/knowledge/knowledge_section_mobile.dart';
import 'package:portfolio/widgets/mobile/my_service/my_service_mobile.dart';
import 'package:portfolio/widgets/mobile/my_skills/my_skills_mobile.dart';
import 'package:portfolio/widgets/mobile/projects_mobile/project_section_mobile.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              AppbarMobile(),
              InfoSectionMobile(),
              SizedBox(height: 20,),
              MyServiceMobile(),
              SizedBox(height: 10,),
              MySkillsMobile(),
              SizedBox(height: 10,),
              KnowledgeSectionMobile(),
              SizedBox(height: 10,),
              ProjectSectionMobile(),
              SizedBox(height: 10,),
              FooterSectionMobile()
            ],
          ),
        ));
  }
}
