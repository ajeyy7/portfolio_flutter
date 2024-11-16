import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/contact_button.dart';

class ContactMob extends StatelessWidget {
  const ContactMob({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "<Contact Me/>",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Column(
              children: [
                ContactButtonMob(
                    icon: Icons.chat, label: "assets/svgs/whtsapp.svg"),
                ContactButtonMob(
                    icon: Icons.telegram, label: "assets/svgs/gmail.svg"),
                ContactButtonMob(icon: Icons.email, label: "assets/svgs/tele.svg"),
              ],
            ),
            SizedBox(height: 16),
            Text("//github.com/yourusername //linkedin.com/in/yourprofile"),
          ],
        ),
      ),
    );
  }
}
