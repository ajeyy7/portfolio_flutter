import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/pages/aboutme_page/aboutme_page.dart';
import 'package:portfolio_flutter/view/pages/contact_page/contact_page.dart';
import 'package:portfolio_flutter/view/pages/project_page/project_page.dart';
import 'package:portfolio_flutter/view/pages/experience_page/experince_page.dart';
import 'package:portfolio_flutter/view/pages/topbar_section/topbar_sec.dart';

class FullView extends StatelessWidget {
  const FullView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
       
          slivers: [
            SliverToBoxAdapter(child: TopBarSection()),
            SliverToBoxAdapter(child: AboutMeSection()),
            SliverToBoxAdapter(child: ProjectsSection()),
            SliverToBoxAdapter(child: ExperienceSection()),
            SliverToBoxAdapter(child: ContactSection())
          ],
      
      ),
    );
  }
}
