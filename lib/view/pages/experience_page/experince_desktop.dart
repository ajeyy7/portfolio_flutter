import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/components/commonicon_button.dart';
import 'package:portfolio_flutter/components/experience_card.dart';
import 'package:portfolio_flutter/components/fade_divider.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperineceDesktop extends StatelessWidget {
  const ExperineceDesktop({
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
              text: '<Experience/>',
              bubbleColor: isDarkMode ? charcoal : lightGray,
              borderColor: isDarkMode ? lightGray : charcoal,
            ),
            const FadeDivider(),
            const SizedBox(height: 16),
            const WorkExperienceCard(
              title: 'Flutter Developer - RagTechnologies',
              duration: 'Feb 2024 – Aug 2024',
              description:
                  '• Specialized in crafting mobile applications seamlessly \nintegrated with ERP & CRM solutions\n for transportation and logistics. '
                  '• Developed and maintained cross-platform apps using Flutter.',
            ),
            const FadeDivider(),
            const SizedBox(height: 16),
            const WorkExperienceCard(
              title: 'Flutter Developer Intern - Luminar Technolab',
              duration: 'Aug 2023 - Feb 2024',
              description:
                  '• Built Android applications using Flutter and Dart.\n'
                  '• Gained expertise in state management, local storage, and API integration using HTTP/Dio.',
            ),
             CommonIconButton(
              onTap: () => launchUrl(Uri.https('drive.google.com',
                        '/file/d/18AXPGCaWsGvVVw4EAHtHAOjpZw8ohlGr/view?usp=sharing')),
                name: 'CV',
                icon: Icons.arrow_downward,
                width: 150,
                height: 40,
                borderRadius: 20),
            const FadeDivider(),
          ],
        ),
      ),
    );
  }
}
