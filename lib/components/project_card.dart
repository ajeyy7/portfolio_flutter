import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String status;
  final String image;

  const ProjectCard({
    super.key,
    required this.title,
    required this.status,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Chip(
                  label: Text(status),
                  backgroundColor:
                      status == "Finalizado" ? Colors.green : Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}