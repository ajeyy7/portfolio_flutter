import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/main.dart';
import 'package:provider/provider.dart';


class SkillIcon extends StatelessWidget {
  final IconData icon;
  final String label;
final double height;
final double width;
  const SkillIcon({super.key, required this.icon, required this.label, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              border: Border.all(color: gray), shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              label,
              colorFilter: ColorFilter.mode(
                  context.read<ThemeNotifier>().isDarkMode ? charcoal : gray,
                  BlendMode.srcIn),
            ),
          )),
    );
  }
}
