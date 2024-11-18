import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class MobileTopbar extends StatelessWidget {
  const MobileTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.sort,
                  color: isDarkMode ? lightGray : charcoal,
                  size: 40,
                ),
                onPressed: () {
                  Provider.of<ThemeNotifier>(context, listen: false)
                      .toggleMenu();
                },
              ),
              InkWell(
                onTap: () {
                  Provider.of<ThemeNotifier>(context, listen: false)
                      .toggleTheme();
                },
                child: Icon(
                  isDarkMode ? Icons.light_mode : Icons.dark_mode,
                  color: isDarkMode ? lightGray : charcoal,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: context.watch<ThemeNotifier>().isMenuShowing,
          child: Container(
            color: isDarkMode ? lightGray : charcoal,
            child: Column(
              children: [
                MenuItem(
                  title: 'About Me',
                  onTap: () {},
                ),
                MenuItem(
                  title: 'Portfolio',
                  onTap: () {},
                ),
                MenuItem(
                  title: 'Testimonials',
                  onTap: () {},
                ),
                MenuItem(
                  title: 'Blog',
                  onTap: () {},
                ),
                MenuItem(
                  title: 'Contact Us',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const MenuItem({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: isDarkMode ? lightGray : charcoal, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
