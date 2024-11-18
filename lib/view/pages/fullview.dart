import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/pages/aboutme_page/aboutme_page.dart';
import 'package:portfolio_flutter/view/pages/contact_page/contact_page.dart';
import 'package:portfolio_flutter/view/pages/project_page/project_page.dart';
import 'package:portfolio_flutter/view/pages/experience_page/experince_page.dart';
import 'package:portfolio_flutter/view/pages/topbar_section/topbar_sec.dart';

class FullView extends StatelessWidget {
  FullView({super.key});

  final ScrollController _scrollController = ScrollController();
  final GlobalKey aboutMeKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey contactMeKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(child: TopBarSection(
            onScrollToSection: (String section) {
              if (section == 'About Me') scrollToSection(aboutMeKey);
              if (section == 'Projects') scrollToSection(projectsKey);
              if (section == 'Experience') scrollToSection(experienceKey);
              if (section == 'Skills') scrollToSection(skillsKey);
              if (section == 'Contact Me') scrollToSection(contactMeKey);
            },
          )),
          SliverToBoxAdapter(
            key: aboutMeKey,
            child: const AboutMeSection(),
          ),
          SliverToBoxAdapter(
            key: projectsKey,
            child: const ProjectsSection(),
          ),
          SliverToBoxAdapter(
            key: experienceKey,
            child: const ExperienceSection(),
          ),
          SliverToBoxAdapter(
            key: contactMeKey,
            child: const ContactSection(),
          )
        ],
      ),
    );
  }
}
