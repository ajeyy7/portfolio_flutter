import 'package:flutter/material.dart';

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
            SkillIcon(icon: Icons.code, label: "Dart"),
            SkillIcon(icon: Icons.phone_android, label: "Flutter"),
            SkillIcon(icon: Icons.api, label: "API Integration"),
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 48),
        Text(label),
      ],
    );
  }
}