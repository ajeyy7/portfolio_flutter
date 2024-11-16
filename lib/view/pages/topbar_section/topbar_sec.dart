import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/pages/topbar_section/topbar_desktop.dart';
import 'package:portfolio_flutter/view/pages/topbar_section/topbar_mob.dart';


class TopBarSection extends StatelessWidget {
  const TopBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return DesktopTopbar();
      } else {
        return MobileTopbar();
      }
    });
  }
}