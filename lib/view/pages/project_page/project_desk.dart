import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/project_card.dart';
import 'package:portfolio_flutter/view/pages/skills_page/skills_page.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
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
          const Column(
            children: [
              Text(
                "<Skills/>",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SkillIcon(
                    icon: Icons.code,
                    label: "assets/svgs/dart.svg",
                    height: 80,
                    width: 80,
                  ),
                  SkillIcon(
                      icon: Icons.phone_android,
                      label: "assets/svgs/flutter.svg",
                      height: 80,
                      width: 80),
                  SkillIcon(
                      icon: Icons.api,
                      label: "assets/svgs/github.svg",
                      height: 80,
                      width: 80),
                  SkillIcon(
                      icon: Icons.code,
                      label: "assets/svgs/figma.svg",
                      height: 80,
                      width: 80),
                  SkillIcon(
                      icon: Icons.phone_android,
                      label: "assets/svgs/nodejs.svg",
                      height: 80,
                      width: 80),
                  SkillIcon(
                      icon: Icons.api,
                      label: "assets/svgs/postman.svg",
                      height: 80,
                      width: 80),
                  SkillIcon(
                      icon: Icons.api,
                      label: "assets/svgs/js.svg",
                      height: 80,
                      width: 80),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
