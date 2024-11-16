import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/experience_card.dart';

class ExperineceDesktop extends StatelessWidget {
  const ExperineceDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SizedBox(
        height: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
