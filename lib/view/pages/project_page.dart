import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ChatBubble(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "<Proyectos/>",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        CarouselSlider(
          items: const [
            ProjectCard(
                title: "GO Deportes",
                status: "En Proceso",
                image: "assets/svgs/skill.webp"),
            ProjectCard(
                title: "donARG",
                status: "Finalizado",
                image: "assets/svgs/skill.webp"),
          ],
          options: CarouselOptions(
            height: 400,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String status;
  final String image;

  const ProjectCard({
    super.key,
    required this.title,
    required this.status,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Chip(
                  label: Text(status),
                  backgroundColor:
                      status == "Finalizado" ? Colors.green : Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
