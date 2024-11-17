import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class TopBarTextButton extends StatelessWidget {
  final String title;
  const TopBarTextButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
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
