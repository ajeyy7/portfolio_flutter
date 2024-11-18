import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/responsive_builder.dart';
import 'package:portfolio_flutter/view/pages/topbar_section/topbar_desktop.dart';
import 'package:portfolio_flutter/view/pages/topbar_section/topbar_mob.dart';

class TopBarSection extends StatelessWidget {
  final void Function(String section) onScrollToSection;

  const TopBarSection({super.key, required this.onScrollToSection});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobileBuilder: (context) => const MobileTopbar(),
      desktopBuilder: (context) =>
          DesktopTopbar(onScrollToSection: onScrollToSection),
    );
  }
}
