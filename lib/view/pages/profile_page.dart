import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
          horizontal: width / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, I'm",
                style: TextStyle(
                    fontSize: width / 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                    height: 1.2),
              ),
              Text(
                "Ajay Krishna ",
                style: TextStyle(
                    fontSize: width / 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                    height: 1.2),
              ),
              const SizedBox(height: 20),
              Text(
                "I’m a Flutter developer \nskilled in creating seamless \ncross-platform mobile apps with Flutter",
                style: TextStyle(color: Colors.grey.shade400, fontSize: 17),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    height: 45,
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrangeAccent),
                        onPressed: () {},
                        icon: Icon(Icons.download, color: Colors.grey.shade50),
                        label: Text(
                          "CV",
                          style: TextStyle(color: Colors.grey.shade50),
                        )),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 17),
                  ),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
