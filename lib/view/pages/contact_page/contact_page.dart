import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/responsive_builder.dart';
import 'package:portfolio_flutter/view/pages/contact_page/contact_desktop.dart';
import 'package:portfolio_flutter/view/pages/contact_page/contact_mob.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobileBuilder: (context) => const ContactMob(),
      desktopBuilder: (context) => const ContactDesktop(),
    );
  }
}
