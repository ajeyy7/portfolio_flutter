import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_flutter/components/aboutme_vector.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/main.dart';
import 'package:provider/provider.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
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
                      const ChatBubble(
                        text: '<Hello World/>',
                        bubbleColor: charcoal,
                        borderColor: gray,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "I'm Ajay Krishna",
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.w500,
                              color: context.read<ThemeNotifier>().isDarkMode
                                  ? charcoal
                                  : gray,
                            ),
                          ),
                          Text(
                            "Flutter",
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              color: context.read<ThemeNotifier>().isDarkMode
                                  ? charcoal
                                  : gray,
                            ),
                          ),
                          Text(
                            "Developer",
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              color: context.read<ThemeNotifier>().isDarkMode
                                  ? charcoal
                                  : gray,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SvgPicture.asset(
                            colorFilter: ColorFilter.mode(
                                context.read<ThemeNotifier>().isDarkMode
                                    ? charcoal
                                    : gray,
                                BlendMode.srcIn),
                            'assets/svgs/github.svg',
                            height: 50,
                            width: 50,
                          ),
                          SvgPicture.asset(
                            colorFilter: ColorFilter.mode(
                                context.read<ThemeNotifier>().isDarkMode
                                    ? charcoal
                                    : gray,
                                BlendMode.srcIn),
                            'assets/svgs/linkdein.svg',
                            height: 47,
                            width: 47,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: context.read<ThemeNotifier>().isDarkMode
                                  ? charcoal
                                  : gray),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Contact Me',
                                style: TextStyle(
                                    color:
                                        context.read<ThemeNotifier>().isDarkMode
                                            ? charcoal
                                            : gray),
                              ),
                              Icon(Icons.arrow_downward_sharp,
                                  color:
                                      context.read<ThemeNotifier>().isDarkMode
                                          ? charcoal
                                          : gray)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // FadeDivider in the background
                    const SizedBox(
                      width: 500, // Width of divider behind the image
                      child: Column(
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
                    // Profile image on top
                    SizedBox(
                      width: 480,
                      height: 480,
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
    );
  }
}


