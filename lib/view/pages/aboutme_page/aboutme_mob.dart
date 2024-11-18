import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_flutter/components/aboutme_vector.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/components/commonicon_button.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return SizedBox(
      height: screenHeight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                ChatBubble(
                  height: 35,
                  width: 120,
                  textSize: 14,
                  text: '<Hello World/>',
                  bubbleColor: isDarkMode ? charcoal : lightGray,
                  borderColor: isDarkMode ? lightGray : charcoal,
                ),
                Text(
                  "I'm Ajay Krishna",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: isDarkMode ? lightGray : charcoal,
                  ),
                ),
                Text(
                  "Flutter",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? lightGray : charcoal,
                  ),
                ),
                Text(
                  "Developer",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? lightGray : charcoal,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        // FadeDivider in the background
                        const SizedBox(
                          width: 300,
                          height: 150,
                          child: Column(
                            children: [
                              AboutMeVector(),
                              SizedBox(height: 20),
                              AboutMeVector(),
                              AboutMeVector(),
                              SizedBox(height: 10),
                              AboutMeVector(),
                            ],
                          ),
                        ),
                        // Profile image on top
                        SizedBox(
                          width: 300,
                          height: 300,
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
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () =>
                          launchUrl(Uri.https('github.com', '/ajeyy7')),
                      child: SvgPicture.asset(
                        colorFilter: ColorFilter.mode(
                            isDarkMode ? lightGray : charcoal, BlendMode.srcIn),
                        'assets/svgs/github.svg',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    InkWell(
                      onTap: () => launchUrl(Uri.https(
                          'www.linkedin.com', '/in/ajay-krishna-36193018b')),
                      child: SvgPicture.asset(
                        colorFilter: ColorFilter.mode(
                            isDarkMode ? lightGray : charcoal, BlendMode.srcIn),
                        'assets/svgs/linkdein.svg',
                        height: 47,
                        width: 47,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                CommonIconButton(
                    onTap: () => launchUrl(Uri.https('drive.google.com',
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
    );
  }
}
