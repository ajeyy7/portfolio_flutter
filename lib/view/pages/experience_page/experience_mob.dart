import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/fade_divider.dart';

class ExperienceMob extends StatelessWidget {
  const ExperienceMob({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Experience',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            FadeDivider(),
            ExperienceItem(
              company: 'Flutter Developer - RagTechnologies',
              description:
                  '• Specialized in crafting mobile applications seamlessly \nintegrated with ERP & CRM solutions\n for transportation and logistics. '
                  '• Developed and maintained cross-platform apps using Flutter.',
              duration: 'Feb 2024 – Aug 2024',
            ),
            SizedBox(height: 16),
            FadeDivider(),
            ExperienceItem(
              company: 'Flutter Developer Intern - Luminar Technolab',
              description:
                  '• Built Android applications using Flutter and Dart.\n'
                  '• Gained expertise in state management, local storage, and API integration using HTTP/Dio.',
              duration: 'Aug 2023 - Feb 2024',
            ),
            FadeDivider(),
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
