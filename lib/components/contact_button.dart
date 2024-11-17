import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class ContactButtonMob extends StatelessWidget {
  final IconData icon;
  final String label;

  const ContactButtonMob({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 250,
        decoration: BoxDecoration(
            border: Border.all(color: charcoal),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: SizedBox(
          child: SvgPicture.asset(
            colorFilter: ColorFilter.mode(
                context.read<ThemeNotifier>().isDarkMode ? charcoal : gray,
                BlendMode.srcIn),
            label,
            height: 40,
            width: 40,
          ),
        ),
      ),
    );
  }
}

class ContactButtonDeskTop extends StatelessWidget {
  final IconData icon;
  final String label;
  final String title;

  const ContactButtonDeskTop(
      {super.key,
      required this.icon,
      required this.label,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 200,
        decoration: BoxDecoration(
            border: Border.all(color: charcoal),
            borderRadius: const BorderRadius.all(Radius.circular(40))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: SvgPicture.asset(
                colorFilter: ColorFilter.mode(
                    context.read<ThemeNotifier>().isDarkMode ? charcoal : gray,
                    BlendMode.srcIn),
                label,
                height: 40,
                width: 40,
              ),
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
