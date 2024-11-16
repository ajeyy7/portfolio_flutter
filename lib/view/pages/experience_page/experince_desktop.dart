import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/experience_card.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/main.dart';
import 'package:provider/provider.dart';

class ExperineceDesktop extends StatelessWidget {
  const ExperineceDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Experience',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const WorkExperienceCard(
              title: 'Flutter Developer - RagTechnologies',
              duration: 'Feb 2024 – Aug 2024',
              description:
                  '• Specialized in crafting mobile applications seamlessly \nintegrated with ERP & CRM solutions\n for transportation and logistics. '
                  '• Developed and maintained cross-platform apps using Flutter.',
            ),
            const SizedBox(height: 16),
            const WorkExperienceCard(
              title: 'Flutter Developer Intern - Luminar Technolab',
              duration: 'Aug 2023 - Feb 2024',
              description:
                  '• Built Android applications using Flutter and Dart.\n'
                  '• Gained expertise in state management, local storage, and API integration using HTTP/Dio.',
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'CV',
                          style: TextStyle(
                              color: context.read<ThemeNotifier>().isDarkMode
                                  ? charcoal
                                  : gray),
                        ),
                        Icon(Icons.download,
                            color: context.read<ThemeNotifier>().isDarkMode
                                ? charcoal
                                : gray)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
