import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/main.dart';
import 'package:portfolio_flutter/view/pages/aboutme_page.dart';
import 'package:portfolio_flutter/view/pages/contact_page.dart';

import 'package:portfolio_flutter/view/pages/project_page.dart';
import 'package:portfolio_flutter/view_model/experince_page.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildNavItem("About Me", context),
                  _buildNavItem("Portfolio", context),
                  _buildNavItem("Testimonials", context),
                  _buildNavItem("Blog", context),
                  _buildNavItem("Contact Us", context),
                  const SizedBox(width: 200),
                  InkWell(
                    onTap: () {
                      context.read<ThemeNotifier>().toggleTheme();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Light',
                                style: TextStyle(
                                  color:
                                      context.read<ThemeNotifier>().isDarkMode
                                          ? charcoal
                                          : gray,
                                ),
                              ),
                              Icon(
                                context.read<ThemeNotifier>().isDarkMode
                                    ? Icons.light_mode
                                    : Icons.dark_mode,
                                color: context.read<ThemeNotifier>().isDarkMode
                                    ? charcoal
                                    : gray,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const AboutMe(),
            const ProjectsSection(),
            const SkillsSection(),
            const ExperienceSection(),
            const ContactSection()
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {
          if (kDebugMode) {
            print("$title clicked");
          }
        },
        child: Text(
          title,
          style: TextStyle(
              color:
                  context.read<ThemeNotifier>().isDarkMode ? charcoal : gray),
        ),
      ),
    );
  }
}
