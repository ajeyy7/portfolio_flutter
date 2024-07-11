import 'package:flutter/material.dart';
import 'package:portfolio_flutter/view/components/contactcard.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 10, vertical: 20),
          child: Column(
            children: [
              Text(
                'Contact Me',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 20,
                    height: 1.2,
                    color: Colors.orangeAccent),
              ),
             const ContactCard()
            ],
          ),
        ));
  }
}
