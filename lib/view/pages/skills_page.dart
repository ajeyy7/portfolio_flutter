import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/components/skillspercentage.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 10, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'My Skills',
                style: TextStyle(
                    fontSize: width / 20,
                    height: 1.2,
                    color: Colors.orangeAccent),
              ),
            ],
          ),
          const SizedBox(height: 70),
          LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return const Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkillsPercent(
                          text: "Flutter",
                          currentStep: 6,
                        ),
                        SkillsPercent(
                          text: "Dart",
                          currentStep: 9,
                        ),
                        SkillsPercent(
                          text: "Firebase",
                          currentStep: 5,
                        ),
                        SkillsPercent(
                          text: "UI/UX",
                          currentStep: 8,
                        ),
                      ],
                    ),
                    SizedBox(width: 70),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkillsPercent(
                          text: "Deployment",
                          currentStep: 5,
                        ),
                        SkillsPercent(
                          text: "Statemangment",
                          currentStep: 6,
                        ),
                        SkillsPercent(
                          text: "Hive",
                          currentStep: 7,
                        ),
                        SkillsPercent(
                          text: "postman",
                          currentStep: 8,
                        ),
                      ],
                    )
                  ],
                ),
              );
            } else {
              return const Flexible(
                child: Column(
                  children: [
                    Column(
                      children: [
                        SkillsPercent(
                          text: "Flutter",
                          currentStep: 6,
                        ),
                        SkillsPercent(
                          text: "Dart",
                          currentStep: 9,
                        ),
                        SkillsPercent(
                          text: "Firebase",
                          currentStep: 5,
                        ),
                        SkillsPercent(
                          text: "UI/UX",
                          currentStep: 8,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      children: [
                        SkillsPercent(
                          text: "Deployment",
                          currentStep: 5,
                        ),
                        SkillsPercent(
                          text: "Statemangment",
                          currentStep: 6,
                        ),
                        SkillsPercent(
                          text: "Hive",
                          currentStep: 7,
                        ),
                        SkillsPercent(
                          text: "postman",
                          currentStep: 8,
                        ),
                      ],
                    )
                  ],
                ),
              );
            }
          })
        ],
      ),
    );
  }
}
