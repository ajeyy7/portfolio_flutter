import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/responsive_builder.dart';
import 'package:portfolio_flutter/view/pages/project_page/project_desk.dart';
import 'package:portfolio_flutter/view/pages/project_page/project_mob.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobileBuilder: (context) => const ProjectMobile(),
      desktopBuilder: (context) => const ProjectDesktop(),
    );
  }
}







