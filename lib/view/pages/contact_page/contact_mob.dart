import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/contact_button.dart';

class ContactMob extends StatelessWidget {
  const ContactMob({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "<Contact/>",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        Column(
          children: [
            ContactButton(icon: Icons.chat, label: "WhatsApp"),
            ContactButton(icon: Icons.telegram, label: "Telegram"),
            ContactButton(icon: Icons.email, label: "Gmail"),
          ],
        ),
        SizedBox(height: 16),
        Text("//github.com/yourusername //linkedin.com/in/yourprofile"),
      ],
    );
  }
}