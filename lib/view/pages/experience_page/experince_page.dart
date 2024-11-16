import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/responsive_builder.dart';
import 'package:portfolio_flutter/view/pages/experience_page/experience_mob.dart';
import 'package:portfolio_flutter/view/pages/experience_page/experince_desktop.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobileBuilder: (context) => const ExperienceMob(),
      desktopBuilder: (context) => const ExperineceDesktop(),
    );
  }
}
