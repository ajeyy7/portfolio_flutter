import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  final String description;

  const ProfileCard(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple.shade900,
      child: Column(
        children: [
          CircleAvatar(radius: 100, backgroundImage: NetworkImage(imageUrl)),
          const SizedBox(height: 16.0),
          Text(
            name,
            style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            description,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
