import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/components/navbar.dart';
import 'package:portfolio_flutter/view/pages/aboutme_page.dart';
import 'package:portfolio_flutter/view/pages/contact_page.dart';
import 'package:portfolio_flutter/view/pages/profile_page.dart';
import 'package:portfolio_flutter/view/pages/project_page.dart';
import 'package:portfolio_flutter/view/pages/skills_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(color: Color(0xff120720)),
          child: const Column(
            children: [
              NavBar(),
              ProfilePage(),
              AboutMePage(),
              SkillsPage(),
              ProjectPage(),
              // ContactPage()
            ],
          ),
        ),
      ),
    );
  }
}
