import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/experience/experience_section.dart';
import 'package:portfolio/widgets/web/footer/footer_section.dart';
import 'package:portfolio/widgets/web/info_section.dart';
import 'package:portfolio/widgets/web/my_service/my_service_section.dart';
import 'package:portfolio/widgets/web/my_skills/skill_section.dart';
import '../../widgets/web/appbar/custom_appbar.dart';
import '../../widgets/web/knowledge/knowledge_section.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 50,),
              CustomAppbar(),
              InfoSection(),
              SizedBox(height: 70,),
              MyServiceSection(),
              SizedBox(height: 50,),
              SkillSection(),
              SizedBox(height: 50,),
              KnowledgeSection(),
              SizedBox(height: 50,),
              ExperienceSection(),
              FooterSection(),
            ],
          ),
        ),
      )
    );
  }
}
