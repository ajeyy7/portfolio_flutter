import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/responsive_builder.dart';
import 'package:portfolio_flutter/view/pages/aboutme_page/aboutme_desk.dart';
import 'package:portfolio_flutter/view/pages/aboutme_page/aboutme_mob.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobileBuilder: (context) => const AboutMeMobile(),
      desktopBuilder: (context) => const AboutMeDesktop(),
    );
  }
}
