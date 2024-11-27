import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_flutter/components/aboutme_vector.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/components/commonicon_button.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/constants/image.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
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
                        Column(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => launchUrl(
                                      Uri.https('github.com', '/ajeyy7')),
                                  child: SvgPicture.asset(
                                    colorFilter: ColorFilter.mode(
                                        isDarkMode ? lightGray : charcoal,
                                        BlendMode.srcIn),
                                   githubSvg,
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                InkWell(
                                  onTap: () => launchUrl(Uri.https(
                                      'www.linkedin.com',
                                      '/in/ajay-krishna-36193018b')),
                                  child: SvgPicture.asset(
                                    colorFilter: ColorFilter.mode(
                                        isDarkMode ? lightGray : charcoal,
                                        BlendMode.srcIn),
                                    linkedinSvg,
                                    height: 47,
                                    width: 47,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            CommonIconButton(
                                onTap: () => launchUrl(Uri.https(
                                    'drive.google.com',
                                    '/file/d/18AXPGCaWsGvVVw4EAHtHAOjpZw8ohlGr/view?usp=sharing')),
                                name: 'CV',
                                icon: Icons.arrow_downward_rounded,
                                width: 150,
                                height: 40,
                                borderRadius: 20),
                          ],
                        ),
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
                            myImage,
                            fit: BoxFit.cover,
                          ),
                        ),
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
