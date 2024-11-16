import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/pages/project_page/project_desk.dart';
import 'package:portfolio_flutter/view/pages/project_page/project_mob.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return const ProjectDesktop();
      } else {
        return const ProjectMobile();
      }
    });
  }
}







