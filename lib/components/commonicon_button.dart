import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class CommonIconButton extends StatelessWidget {
  final String name;
  final IconData icon;
  final double width;
  final double height;
  final double borderRadius;
  final void Function()? onTap;
  const CommonIconButton({
    super.key,
    required this.name,
    required this.icon,
    required this.width,
    required this.height,
    required this.borderRadius,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              border: Border.all(
                color: isDarkMode ? lightGray : charcoal,
              ),
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isDarkMode ? lightGray : charcoal,
                  ),
                ),
                Icon(
                  icon,
                  color: isDarkMode ? lightGray : charcoal,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
