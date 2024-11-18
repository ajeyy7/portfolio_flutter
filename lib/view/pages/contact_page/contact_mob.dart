import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/components/contact_button.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class ContactMob extends StatelessWidget {
  const ContactMob({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final isDarkMode = context.watch<ThemeNotifier>().isDarkMode;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ChatBubble(
              text: '<Contact/>',
              bubbleColor: isDarkMode ? charcoal : lightGray,
              borderColor: isDarkMode ? lightGray : charcoal,
            ),
            const SizedBox(height: 16),
            const Column(
              children: [
                ContactButtonMob(
                    icon: Icons.chat, label: "assets/svgs/whtsapp.svg"),
                ContactButtonMob(
                    icon: Icons.telegram, label: "assets/svgs/gmail.svg"),
                ContactButtonMob(
                    icon: Icons.email, label: "assets/svgs/tele.svg"),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              children: [
                Text(
                  "https://github.com/ajeyy7",
                  style: TextStyle(color: isDarkMode ? lightGray : charcoal),
                ),
                Text(
                  "www.linkedin.com/in/ajay-krishna-36193018b",
                  style: TextStyle(color: isDarkMode ? lightGray : charcoal),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
