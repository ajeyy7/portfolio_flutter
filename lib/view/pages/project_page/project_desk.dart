import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/components/project_card.dart';
import 'package:portfolio_flutter/view/pages/skills_page/skills_page.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ChatBubble(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "<Projects/>",
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
        SkillsSection()
      ],
    );
  }
}
