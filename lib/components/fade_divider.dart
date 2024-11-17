import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class FadeDivider extends StatelessWidget {
  const FadeDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      height: 3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: isDarkMode
              ? [
                  lightGray.withOpacity(0.6), // Completely transparent at start
                  lightGray.withOpacity(0.5), // Slight fade-in
                  lightGray.withOpacity(0.3), // More visible in the middle
                  lightGray.withOpacity(0.1), // Fading out again
                  lightGray.withOpacity(0.0), // Completely transparent at end
                ]
              : [
                  charcoal.withOpacity(0.6), // Completely transparent at start
                  charcoal.withOpacity(0.5), // Slight fade-in
                  charcoal.withOpacity(0.3), // More visible in the middle
                  charcoal.withOpacity(0.1), // Fading out again
                  charcoal.withOpacity(0.0), // Completely transparent at end
                ],
          stops: const [0.0, 0.2, 0.5, 0.8, 1.0], // Smooth transitions
        ),
      ),
    );
  }
}
