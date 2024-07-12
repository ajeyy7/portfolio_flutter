import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 10, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.start,
                "About\n Me",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                    height: 1.2),
              ),
              const SizedBox(width: 40),
              Icon(
                Icons.arrow_forward,
                size: MediaQuery.of(context).size.width / 20,
                color: Colors.orangeAccent,
              )
            ],
          ),
          const SizedBox(height: 30),
          LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Row(
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    "Hi, I'm Ajay, a Flutter developer passionate \nabout building beautiful and functional\n mobile apps. With expertise in Flutter and Firebase,\n I create seamless cross-platform experiences. Always eager to learn, \nI'm honing my skills in Dart and object-oriented\n programming. Let's build something amazing together!",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  SvgPicture.asset('assets/svgs/12064756_4882468.svg')
                ],
              );
            } else {
              return Column(
                children: [
                  SvgPicture.asset('assets/svgs/12064756_4882468.svg'),
                  Text(
                    textAlign: TextAlign.start,
                    "Hi, I'm Ajay, a Flutter developer passionate \nabout building beautiful and functional\n mobile apps. With expertise in Flutter and Firebase,\n I create seamless cross-platform experiences. Always eager to learn, \nI'm honing my skills in Dart and object-oriented\n programming. Let's build something amazing together!",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ],
              );
            }
          }),
          const SizedBox(height: 30),
          Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orangeAccent),
            child: const Center(
                child: Text(
              "Contact Me",
              style: TextStyle(color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}
