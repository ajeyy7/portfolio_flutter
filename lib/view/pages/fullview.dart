import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/topbar.dart';
import 'package:portfolio_flutter/view/pages/aboutme_page/aboutme_page.dart';
import 'package:portfolio_flutter/view/pages/contact_page/contact_page.dart';
import 'package:portfolio_flutter/view/pages/project_page/project_page.dart';
import 'package:portfolio_flutter/view/pages/experience_page/experince_page.dart';

class FullView extends StatelessWidget {
  const FullView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           TopBarSection(),
            AboutMeSection(),
            ProjectsSection(),
            ExperienceSection(),
            ContactSection()
          ],
        ),
      ),
    );
  }


}
