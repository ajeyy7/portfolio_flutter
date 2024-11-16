import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_flutter/components/aboutme_vector.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/main.dart';
import 'package:provider/provider.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const ChatBubble(
                text: '<Hello World/>',
                bubbleColor: charcoal,
                borderColor: gray,
              ),
              Text(
                "I'm Ajay Krishna",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: context.read<ThemeNotifier>().isDarkMode
                      ? charcoal
                      : gray,
                ),
              ),
              Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: context.read<ThemeNotifier>().isDarkMode
                      ? charcoal
                      : gray,
                ),
              ),
              Text(
                "Developer",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: context.read<ThemeNotifier>().isDarkMode
                      ? charcoal
                      : gray,
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
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                colorFilter: ColorFilter.mode(
                    context.read<ThemeNotifier>().isDarkMode ? charcoal : gray,
                    BlendMode.srcIn),
                'assets/svgs/github.svg',
                height: 50,
                width: 50,
              ),
              SvgPicture.asset(
                colorFilter: ColorFilter.mode(
                    context.read<ThemeNotifier>().isDarkMode ? charcoal : gray,
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
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                  color: context.read<ThemeNotifier>().isDarkMode
                      ? charcoal
                      : gray),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Contact Me',
                    style: TextStyle(
                        color: context.read<ThemeNotifier>().isDarkMode
                            ? charcoal
                            : gray),
                  ),
                  Icon(Icons.arrow_downward_sharp,
                      color: context.read<ThemeNotifier>().isDarkMode
                          ? charcoal
                          : gray)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
