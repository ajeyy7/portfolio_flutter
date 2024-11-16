import 'package:flutter/material.dart';

class AboutMeVector extends StatelessWidget {
  const AboutMeVector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      height: 3, // Adjust thickness as needed
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.0), // Completely transparent at start
            Colors.black.withOpacity(0.0), // Slight fade-in
            Colors.black.withOpacity(0.3), // More visible in the middle
            Colors.black.withOpacity(0.4), // Fading out again
            Colors.black.withOpacity(0.6), // Completely transparent at end
          ],
          stops: const [0.0, 0.2, 0.5, 0.8, 1.0], // Smooth transitions
        ),
      ),
    );
  }
}