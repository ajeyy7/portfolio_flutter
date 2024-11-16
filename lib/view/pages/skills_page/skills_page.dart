import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/main.dart';
import 'package:provider/provider.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "<Skills/>",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        Wrap(
          spacing: 12,
          children: [
            SkillIcon(icon: Icons.code, label: "assets/svgs/dart.svg"),
            SkillIcon(
                icon: Icons.phone_android, label: "assets/svgs/flutter.svg"),
            SkillIcon(icon: Icons.api, label: "assets/svgs/github.svg"),
            SkillIcon(icon: Icons.code, label: "assets/svgs/figma.svg"),
            SkillIcon(
                icon: Icons.phone_android, label: "assets/svgs/nodejs.svg"),
            SkillIcon(icon: Icons.api, label: "assets/svgs/postman.svg"),
            SkillIcon(icon: Icons.api, label: "assets/svgs/js.svg"),
          ],
        ),
      ],
    );
  }
}

class SkillIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const SkillIcon({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
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
        ));
  }
}
