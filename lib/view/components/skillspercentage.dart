import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class SkillsPercent extends StatelessWidget {
  final String text;
  const SkillsPercent({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 22, color: Colors.orangeAccent),
        ),
        const SizedBox(width: 30),
        LinearProgressBar(
          maxSteps: 9,
          progressType: LinearProgressBar.progressTypeDots,
          currentStep: 5,
          progressColor: Colors.orangeAccent,
          backgroundColor: Colors.grey,
          dotsAxis: Axis.horizontal, // OR Axis.vertical
          dotsActiveSize: 10,
          dotsInactiveSize: 10,
          dotsSpacing:
              EdgeInsets.only(right: 10), // also can use any EdgeInsets.
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          semanticsLabel: "Label",
          semanticsValue: "Value",
          minHeight: 10,
        ),
      ],
    );
  }
}
