import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/commonicon_button.dart';
import 'package:portfolio_flutter/components/topbartext.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class DesktopTopbar extends StatelessWidget {
  final void Function(String section) onScrollToSection;

  const DesktopTopbar({super.key, required this.onScrollToSection});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TopBarTextButton(
            title: 'About Me',
            onTap: () => onScrollToSection('About Me'),
          ),
          TopBarTextButton(
            title: 'Projects',
            onTap: () => onScrollToSection('Projects'),
          ),
          TopBarTextButton(
            title: 'Experience',
            onTap: () => onScrollToSection('Experience'),
          ),
          TopBarTextButton(
            title: 'Skills',
            onTap: () => onScrollToSection('Projects'),
          ),
          TopBarTextButton(
            title: 'Contact Me',
            onTap: () => onScrollToSection('Contact Me'),
          ),
          InkWell(
            onTap: () {
              context.read<ThemeNotifier>().toggleTheme();
            },
            child: CommonIconButton(
                name: isDarkMode ? "Light" : "Dark",
                icon: isDarkMode ? Icons.light_mode : Icons.dark_mode,
                width: 110,
                height: 40,
                borderRadius: 4),
          ),
        ],
      ),
    );
  }
}
