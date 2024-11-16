import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ContactButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(icon),
      label: Text(label),
      onPressed: () {},
    );
  }
}