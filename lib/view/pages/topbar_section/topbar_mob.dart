import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class MobileTopbar extends StatefulWidget {
  const MobileTopbar({super.key});

  @override
  _MobileTopbarState createState() => _MobileTopbarState();
}

class _MobileTopbarState extends State<MobileTopbar> {
  bool _isMenuVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.sort,
                  color: Colors.white,
                  size: 40,
                ), // Menu icon
                onPressed: () {
                  setState(() {
                    _isMenuVisible = !_isMenuVisible;
                  });
                },
              ),
              InkWell(
                onTap: () {
                  context.read<ThemeNotifier>().toggleTheme();
                },
                child: Icon(
                  context.read<ThemeNotifier>().isDarkMode
                      ? Icons.light_mode
                      : Icons.dark_mode,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: _isMenuVisible,
          child: Container(
            color: context.read<ThemeNotifier>().isDarkMode
                ? lightGray
                : charcoal, // Background for the dropdown menu
            child: Column(
              children: [
                MenuItem(
                  title: 'About Me',
                  onTap: () {
                    // Navigate or perform actions
                    setState(() => _isMenuVisible = false);
                  },
                ),
                MenuItem(
                  title: 'Portfolio',
                  onTap: () {
                    // Navigate or perform actions
                    setState(() => _isMenuVisible = false);
                  },
                ),
                MenuItem(
                  title: 'Testimonials',
                  onTap: () {
                    // Navigate or perform actions
                    setState(() => _isMenuVisible = false);
                  },
                ),
                MenuItem(
                  title: 'Blog',
                  onTap: () {
                    // Navigate or perform actions
                    setState(() => _isMenuVisible = false);
                  },
                ),
                MenuItem(
                  title: 'Contact Us',
                  onTap: () {
                    // Navigate or perform actions
                    setState(() => _isMenuVisible = false);
                  },
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
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: context.read<ThemeNotifier>().isDarkMode
                      ? charcoal
                      : lightGray,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
