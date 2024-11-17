import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class AboutMeVector extends StatelessWidget {
  const AboutMeVector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      height: 3, // Adjust thickness as needed
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: isDarkMode
              ? [
                  lightGray.withOpacity(0.0), // Light fade for dark mode
                  lightGray.withOpacity(0.0),
                  lightGray.withOpacity(0.3),
                  lightGray.withOpacity(0.4),
                  lightGray.withOpacity(0.6),
                ]
              : [
                  charcoal.withOpacity(0.0), // Dark fade for light mode
                  charcoal.withOpacity(0.0),
                  charcoal.withOpacity(0.3),
                  charcoal.withOpacity(0.4),
                  charcoal.withOpacity(0.6),
                ],
          stops: const [0.0, 0.2, 0.5, 0.8, 1.0], // Smooth transitions
        ),
      ),
    );
  }
}
