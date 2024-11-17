import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/fade_divider.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class ExperienceMob extends StatelessWidget {
  const ExperienceMob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
            final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Experience',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          company,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          duration,
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 8.0),
        Text(
          description,
          style: const TextStyle(height: 1.5),
        ),
      ],
    );
  }
}
