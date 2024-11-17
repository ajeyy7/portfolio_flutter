import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class TopBarTextButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const TopBarTextButton({
    super.key,
    required this.title, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed:onTap,
        child: Text(
          title,
          style: TextStyle(color: isDarkMode ? lightGray : charcoal),
        ),
      ),
    );
  }
}
