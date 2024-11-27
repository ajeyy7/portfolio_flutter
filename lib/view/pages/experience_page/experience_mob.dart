import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/components/commonicon_button.dart';
import 'package:portfolio_flutter/components/fade_divider.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceMob extends StatelessWidget {
  const ExperienceMob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChatBubble(
              height: 35,
                  width: 120,
              text: '<Experience/>',
              bubbleColor: isDarkMode ? charcoal : lightGray,
              borderColor: isDarkMode ? lightGray : charcoal,
            ),
            const SizedBox(height: 16),
            const FadeDivider(),
            const ExperienceItem(
              company: 'Flutter Developer - RagTechnologies',
              description:
                  '• Specialized in crafting mobile applications seamlessly \nintegrated with ERP & CRM solutions\n for transportation and logistics. '
                  '• Developed and maintained cross-platform apps using Flutter.',
              duration: 'Feb 2024 – Aug 2024',
            ),
            const SizedBox(height: 16),
            const FadeDivider(),
            const ExperienceItem(
              company: 'Flutter Developer Intern - Luminar Technolab',
              description:
                  '• Built Android applications using Flutter and Dart.\n'
                  '• Gained expertise in state management, local storage, and API integration using HTTP/Dio.',
              duration: 'Aug 2023 - Feb 2024',
            ),
            const FadeDivider(),
             Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
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

class ExperienceItem extends StatelessWidget {
  final String company;
  final String duration;
  final String description;

  const ExperienceItem(
      {super.key,
      required this.company,
      required this.duration,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          company,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: isDarkMode ? lightGray : charcoal),
        ),
        const SizedBox(height: 4.0),
        Text(
          duration,
          style: TextStyle(color: isDarkMode ? lightGray : charcoal),
        ),
        const SizedBox(height: 8.0),
        Text(
          description,
          style:
              TextStyle(height: 1.5, color: isDarkMode ? lightGray : charcoal),
        ),
      ],
    );
  }
}
