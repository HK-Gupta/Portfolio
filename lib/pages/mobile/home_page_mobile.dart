import 'package:flutter/material.dart';
import 'package:portfolio/widgets/mobile/footer/footer_section_mobile.dart';
import 'package:portfolio/widgets/mobile/info_section_mobile.dart';
import 'package:portfolio/widgets/mobile/knowledge/knowledge_section_mobile.dart';
import 'package:portfolio/widgets/mobile/my_service/my_service_mobile.dart';
import 'package:portfolio/widgets/mobile/my_skills/my_skills_mobile.dart';
import 'package:portfolio/widgets/mobile/projects_mobile/project_section_mobile.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  _HomePageMobileState createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToSection(GlobalKey sectionKey) {
    Navigator.of(context).pop(); // Close the drawer
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
  final GlobalKey _footerSectionKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color(0xFF1f1f29),
        surfaceTintColor: Colors.transparent,
        title: Text(
          "HARSH",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF1f1f29),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: const Text(
                'Navigate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Info', style: Theme.of(context).textTheme.bodyMedium),
              onTap: () => _scrollToSection(_infoSectionKey),
            ),
            ListTile(
              title: Text('Services', style: Theme.of(context).textTheme.bodyMedium),
              onTap: () => _scrollToSection(_serviceSectionKey),
            ),
            ListTile(
              title: Text('Skills', style: Theme.of(context).textTheme.bodyMedium),
              onTap: () => _scrollToSection(_skillSectionKey),
            ),
            ListTile(
              title: Text('Knowledge', style: Theme.of(context).textTheme.bodyMedium),
              onTap: () => _scrollToSection(_knowledgeSectionKey),
            ),
            ListTile(
              title: Text('Projects', style: Theme.of(context).textTheme.bodyMedium),
              onTap: () => _scrollToSection(_projectSectionKey),
            ),
            ListTile(
              title: Text('Footer', style: Theme.of(context).textTheme.bodyMedium),
              onTap: () => _scrollToSection(_footerSectionKey),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              key: _infoSectionKey,
              child: InfoSectionMobile(),
            ),
            SizedBox(height: 20,),
            Container(
              key: _serviceSectionKey,
              child: MyServiceMobile(),
            ),
            SizedBox(height: 10,),
            Container(
              key: _skillSectionKey,
              child: MySkillsMobile(),
            ),
            SizedBox(height: 10,),
            Container(
              key: _knowledgeSectionKey,
              child: KnowledgeSectionMobile(),
            ),
            SizedBox(height: 10,),
            Container(
              key: _projectSectionKey,
              child: ProjectSectionMobile(),
            ),
            SizedBox(height: 10,),
            Container(
              key: _footerSectionKey,
              child: FooterSectionMobile(),
            ),
          ],
        ),
      ),
    );
  }
}
