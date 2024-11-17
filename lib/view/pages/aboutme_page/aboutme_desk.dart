import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_flutter/components/aboutme_vector.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/components/commonicon_button.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: SizedBox(
        height: screenHeight,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        ChatBubble(
                          text: '<Hello World/>',
                          bubbleColor: isDarkMode ? charcoal : lightGray,
                          borderColor: isDarkMode ? lightGray : charcoal,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "I'm Ajay Krishna",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w500,
                                color: isDarkMode ? lightGray : charcoal,
                              ),
                            ),
                            Text(
                              "Flutter",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                                color: isDarkMode ? lightGray : charcoal,
                              ),
                            ),
                            Text(
                              "Developer",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                                color: isDarkMode ? lightGray : charcoal,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            SvgPicture.asset(
                              colorFilter: ColorFilter.mode(
                                  isDarkMode ? lightGray : charcoal,
                                  BlendMode.srcIn),
                              'assets/svgs/github.svg',
                              height: 50,
                              width: 50,
                            ),
                            SvgPicture.asset(
                              colorFilter: ColorFilter.mode(
                                  isDarkMode ? lightGray : charcoal,
                                  BlendMode.srcIn),
                              'assets/svgs/linkdein.svg',
                              height: 47,
                              width: 47,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const CommonIconButton(
                            name: 'Contact Me',
                            icon: Icons.arrow_downward_rounded,
                            width: 150,
                            height: 40,
                            borderRadius: 20),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.4,
                        child: const Column(
                          children: [
                            AboutMeVector(),
                            SizedBox(height: 50),
                            AboutMeVector(),
                            AboutMeVector(),
                            SizedBox(height: 10),
                            AboutMeVector(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.4,
                        height: screenWidth * 0.4,
                        child: ClipOval(
                          child: Image.asset(
                            'assets/svgs/img.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
