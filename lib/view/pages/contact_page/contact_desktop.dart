import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/components/contact_button.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/constants/image.dart';
import 'package:portfolio_flutter/view_model/themes.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactButtonDeskTop(
                  onTap: () => launchUrl(Uri.https('wa.me', '/9846572149')),
                  icon: Icons.chat,
                  label: whatsappSvg,
                  title: 'Whatsapp',
                ),
                ContactButtonDeskTop(
                  onTap: () => launchUrl(Uri.https(
                      'www.linkedin.com', '/in/ajay-krishna-36193018b')),
                  icon: Icons.chat,
                  label: linkedinSvg,
                  title: 'Linkedin',
                ),
                ContactButtonDeskTop(
                  onTap: () => launchUrl(Uri.https('github.com', '/ajeyy7')),
                  icon: Icons.chat,
                  label: githubSvg,
                  title: 'GitHub',
                ),
                ContactButtonDeskTop(
                  onTap: () => launchUrl(
                      Uri.parse('mailto:ajaykrishna9872@gmail.com?subject=Hi')),
                  icon: Icons.telegram,
                  label: gmailSvg,
                  title: 'Gmail',
                ),
                ContactButtonDeskTop(
                  onTap: () {},
                  icon: Icons.email,
                  label: telegramSvg,
                  title: 'Telegram',
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('© 2024 Ajay Krishna. All rights reserved.',
                    style: TextStyle(
                        color: isDarkMode ? lightGray : charcoal,
                        letterSpacing: 4)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
