import 'package:flutter/material.dart';
import 'package:portfolio_flutter/main.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Provider.of<ThemeNotifier>(context).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text("<Proyectos/>"),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => Provider.of<ThemeNotifier>(context, listen: false)
                .toggleTheme(),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ContactSection()],
        ),
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

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
