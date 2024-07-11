import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/components/skillspercentage.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 10, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'My Skills',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 20,
                    height: 1.2,
                    color: Colors.orangeAccent),
              ),
            ],
          ),
          const SizedBox(height: 70),
          const Row(
            children: [
              Column(
                children: [
                  SkillsPercent(text: "Flutter"),
                  SkillsPercent(text: "Dart"),
                  SkillsPercent(text: "Firebase"),
                  SkillsPercent(text: "UI/UX"),
                ],
              ),
              SizedBox(width: 70),
              Column(
                children: [
                  SkillsPercent(text: "Deployment"),
                  SkillsPercent(text: "Statemangment"),
                  SkillsPercent(text: "Hive"),
                  SkillsPercent(text: "postman"),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
