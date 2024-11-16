import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/topbartext.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/main.dart';
import 'package:provider/provider.dart';

class DesktopTopbar extends StatelessWidget {
  const DesktopTopbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TopBarTextButton(title: 'About Me'),
            const TopBarTextButton(title: 'Portfolio'),
            const TopBarTextButton(title: 'Testimonials'),
            const TopBarTextButton(title: 'Blog'),
            const TopBarTextButton(title: 'Contact Us'),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Light',
                          style: TextStyle(
                            color: context.read<ThemeNotifier>().isDarkMode
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
    );
  }
}