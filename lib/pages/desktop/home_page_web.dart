import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/web/experience/experience_section.dart';
import 'package:portfolio/widgets/web/footer/footer_section.dart';
import 'package:portfolio/widgets/web/info_section.dart';
import 'package:portfolio/widgets/web/my_service/my_service_section.dart';
import 'package:portfolio/widgets/web/my_skills/skill_section.dart';
import 'package:portfolio/widgets/web/projects_gif/project_section.dart';
import '../../widgets/web/appbar/custom_appbar.dart';
import '../../widgets/web/knowledge/knowledge_section.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});

  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(GlobalKey sectionKey) {
    Scrollable.ensureVisible(
      sectionKey.currentContext!,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  final GlobalKey _infoSectionKey = GlobalKey();
  final GlobalKey _serviceSectionKey = GlobalKey();
  final GlobalKey _skillSectionKey = GlobalKey();
  final GlobalKey _knowledgeSectionKey = GlobalKey();
  final GlobalKey _projectSectionKey = GlobalKey();
  final GlobalKey _experienceSectionKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color(0xFF1f1f29),
        toolbarHeight: 70,
        surfaceTintColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () => _scrollToSection(_infoSectionKey),
              child: Text('Info', style: Theme.of(context).textTheme.bodyMedium,),
            ),
            TextButton(
              onPressed: () => _scrollToSection(_serviceSectionKey),
              child: Text('Service', style: Theme.of(context).textTheme.bodyMedium,),
            ),
            TextButton(
              onPressed: () => _scrollToSection(_skillSectionKey),
              child: Text('Skills', style: Theme.of(context).textTheme.bodyMedium,),
            ),
            TextButton(
              onPressed: () => _scrollToSection(_knowledgeSectionKey),
              child: Text('Knowledge', style: Theme.of(context).textTheme.bodyMedium,),
            ),
            TextButton(
              onPressed: () => _scrollToSection(_projectSectionKey),
              child: Text('Projects', style: Theme.of(context).textTheme.bodyMedium,),
            ),
            TextButton(
              onPressed: () => _scrollToSection(_experienceSectionKey),
              child: Text('Experience', style: Theme.of(context).textTheme.bodyMedium,),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              key: _infoSectionKey,
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  CustomAppbar(),
                  InfoSection(),
                ],
              ),
            ),
            SizedBox(height: 70,),
            Container(
              key: _serviceSectionKey,
              child: MyServiceSection(),
            ),
            SizedBox(height: 50,),
            Container(
              key: _skillSectionKey,
              child: SkillSection(),
            ),
            SizedBox(height: 50,),
            Container(
              key: _knowledgeSectionKey,
              child: KnowledgeSection(),
            ),
            SizedBox(height: 50,),
            Container(
              key: _projectSectionKey,
              child: ProjectSection(),
            ),
            SizedBox(height: 50,),
            Container(
              key: _experienceSectionKey,
              child: ExperienceSection(),
            ),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
