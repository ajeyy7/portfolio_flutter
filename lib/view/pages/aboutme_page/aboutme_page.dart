import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/pages/aboutme_page/aboutme_desk.dart';
import 'package:portfolio_flutter/view/pages/aboutme_page/aboutme_mob.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return const AboutMeDesktop();
        } else {
          return const AboutMeMobile();
        }
      },
    );
  }
}
