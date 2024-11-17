import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

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
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: isDarkMode ? lightGray : charcoal,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              duration,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: isDarkMode ? lightGray : charcoal),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: 20,
                color: isDarkMode ? lightGray : charcoal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
