import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/pages/experience_page/experience_mob.dart';
import 'package:portfolio_flutter/view/pages/experience_page/experince_desktop.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return const ExperineceDesktop();
      } else {
        return const ExperienceMob();
      }
    });
  }
}
