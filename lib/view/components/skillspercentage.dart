import 'package:flutter/material.dart';

class SkillsPercent extends StatelessWidget {
  final String text;
  final int currentStep;
  final int maxSteps;

  const SkillsPercent({
    super.key,
    required this.text,
    required this.currentStep,
    this.maxSteps = 10, // Default max steps
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textAlign: TextAlign.start,
          text,
          style: TextStyle(fontSize: width / 40, color: Colors.orangeAccent),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List.generate(maxSteps, (index) {
            return Container(
              width: width / 60,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index < currentStep ? Colors.orangeAccent : Colors.grey,
              ),
              margin: const EdgeInsets.only(right: 10),
            );
          }),
        ),
      ],
    );
  }
}
