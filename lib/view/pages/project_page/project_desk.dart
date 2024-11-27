import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/components/project_card.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/constants/image.dart';
import 'package:portfolio_flutter/models/project_model.dart';
import 'package:portfolio_flutter/view/pages/skills_page/skills_page.dart';
import 'package:portfolio_flutter/view_model/project_vm.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class ProjectDesktop extends StatelessWidget {
  const ProjectDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    final projectProvider = context.watch<ProjectProvider>();
    final corosalController = CarouselSliderController();
    final flipController = FlipCardController();

    return ChangeNotifierProvider(
      create: (_) => ProjectProvider(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChatBubble(
                text: '<Projects/>',
                bubbleColor: isDarkMode ? charcoal : lightGray,
                borderColor: isDarkMode ? lightGray : charcoal,
              ),
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios,
                            color: isDarkMode ? lightGray : charcoal),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios,
                            color: isDarkMode ? lightGray : charcoal),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  CarouselSlider.builder(
                    carouselController: corosalController,
                    itemCount: projects.length,
                    itemBuilder: (context, index, realIndex) {
                      final project = projects[index];
                      return FlipCard(
                        onTapFlipping: true,
                        frontWidget: InkWell(
                          onTap: () => flipController.flipcard,
                          child: ProjectCard(
                            title: project['title']!,
                            image: project['image']!,
                          ),
                        ),
                        backWidget: InkWell(
                          onTap: () => flipController.flipcard,
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            color: isDarkMode ? charcoal : lightGray,
                            child: Text(
                              project['description']!,
                              style: TextStyle(
                                color: isDarkMode ? lightGray : charcoal,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        controller: flipController,
                        rotateSide: RotateSide.right,
                       );
                    },
                    options: CarouselOptions(
                      height: 400,
                      animateToClosest: true,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        projectProvider.setCurrentIndex(index);
                      },
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChatBubble(
                    text: '<Skills/>',
                    bubbleColor: isDarkMode ? charcoal : lightGray,
                    borderColor: isDarkMode ? lightGray : charcoal,
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SkillIcon(
                        icon: Icons.code,
                        label: dartSvg,
                        height: 60,
                        width: 60,
                      ),
                      SkillIcon(
                        icon: Icons.phone_android,
                        label: flutterSvg,
                        height: 60,
                        width: 60,
                      ),
                      SkillIcon(
                        icon: Icons.api,
                        label: githubSvg,
                        height: 60,
                        width: 60,
                      ),
                      SkillIcon(
                        icon: Icons.code,
                        label: figmaSvg,
                        height: 60,
                        width: 60,
                      ),
                      SkillIcon(
                        icon: Icons.phone_android,
                        label: nodeSvg,
                        height: 60,
                        width: 60,
                      ),
                      SkillIcon(
                        icon: Icons.api,
                        label: postmanSvg,
                        height: 60,
                        width: 60,
                      ),
                      SkillIcon(
                        icon: Icons.api,
                        label: jsSvg,
                        height: 60,
                        width: 60,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
