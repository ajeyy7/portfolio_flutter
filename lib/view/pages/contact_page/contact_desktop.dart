import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/contact_button.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 800,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "<Contact/>",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Row(
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
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("//github.com/yourusername "),
              Text(" //linkedin.com/in/yourprofile"),
            ],
          ),
        ],
      ),
    );
  }
}
