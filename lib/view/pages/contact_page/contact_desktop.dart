import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/components/contact_button.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChatBubble(
              text: '<Contact/>',
              bubbleColor: isDarkMode ? charcoal : lightGray,
              borderColor: isDarkMode ? lightGray : charcoal,
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactButtonDeskTop(
                  icon: Icons.chat,
                  label: "assets/svgs/whtsapp.svg",
                  title: 'Whatsapp',
                ),
                ContactButtonDeskTop(
                  icon: Icons.telegram,
                  label: "assets/svgs/gmail.svg",
                  title: 'Gmail',
                ),
                ContactButtonDeskTop(
                  icon: Icons.email,
                  label: "assets/svgs/tele.svg",
                  title: 'Telegram',
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("https://github.com/ajeyy7",
                    style: TextStyle(color: isDarkMode ? lightGray : charcoal)),
                Text("www.linkedin.com/in/ajay-krishna-36193018b",
                    style: TextStyle(color: isDarkMode ? lightGray : charcoal)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
