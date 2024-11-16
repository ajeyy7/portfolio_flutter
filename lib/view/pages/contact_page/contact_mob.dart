import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/contact_button.dart';

class ContactMob extends StatelessWidget {
  const ContactMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "<Contact/>",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Column(
            children: [
              ContactButton(icon: Icons.chat, label: "assets/svgs/whtsapp.svg"),
              ContactButton(
                  icon: Icons.telegram, label: "assets/svgs/tele.svg"),
              ContactButton(icon: Icons.email, label: "assets/svgs/gmail.svg"),
            ],
          ),
          SizedBox(height: 16),
          Text("//github.com/yourusername //linkedin.com/in/yourprofile"),
        ],
      ),
    );
  }
}
