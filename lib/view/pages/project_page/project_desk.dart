import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/project_card.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view/pages/skills_page/skills_page.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return SizedBox(
      height: screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Padding(
            padding:const  EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "<Projects/>",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: isDarkMode?lightGray:charcoal),
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
           Column(
            children: [
              Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "<Skills/>",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: isDarkMode?lightGray:charcoal),
                ),
              ),
              const SizedBox(height: 16),
              const Row(
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
