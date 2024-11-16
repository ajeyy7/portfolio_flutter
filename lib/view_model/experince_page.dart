import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';


class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
  

    return Container(
      child: 
      const Padding(
        padding: EdgeInsets.all(16.0),
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
            WorkExperienceCard(
              title: 'Flutter Developer - RagTechnologies',
              duration: 'Feb 2024 – Aug 2024',
              description:
                  '• Specialized in crafting mobile applications seamlessly \nintegrated with ERP & CRM solutions\n for transportation and logistics. '
                  '• Developed and maintained cross-platform apps using Flutter.',
            ),
            SizedBox(height: 16),
            WorkExperienceCard(
              title: 'Flutter Developer Intern - Luminar Technolab',
              duration: 'Aug 2023 - Feb 2024',
              description:
                  '• Built Android applications using Flutter and Dart.\n'
                  '• Gained expertise in state management, local storage, and API integration using HTTP/Dio.',
            ),
          ],
        ),
      ),
    );
  }
}

class WorkExperienceCard extends StatelessWidget {
  final String title;
  final String duration;
  final String description;

  const WorkExperienceCard({
    super.key,
    required this.title,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    const textColor = gray;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              duration,
              style: const TextStyle(
                  fontSize: 18, fontStyle: FontStyle.italic, color: textColor),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 20,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
