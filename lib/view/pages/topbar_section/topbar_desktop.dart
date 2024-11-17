import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/commonicon_button.dart';
import 'package:portfolio_flutter/components/topbartext.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class DesktopTopbar extends StatelessWidget {
  const DesktopTopbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TopBarTextButton(title: 'About Me'),
          const TopBarTextButton(title: 'Projects'),
          const TopBarTextButton(title: 'Experience'),
          const TopBarTextButton(title: 'Skills'),
          const TopBarTextButton(title: 'Contact Me'),
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
