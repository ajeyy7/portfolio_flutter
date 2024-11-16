import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';

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