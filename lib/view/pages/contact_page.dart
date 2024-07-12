import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/components/contactcard.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: width,
          margin: EdgeInsets.symmetric(horizontal: width / 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact Me',
                style: TextStyle(
                    fontSize: width / 20,
                    height: 1.2,
                    color: Colors.orangeAccent),
              ),
              const ContactCard()
            ],
          ),
        ));
  }
}
