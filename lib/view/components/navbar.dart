import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: width / 1,
            height: height / 11,
            decoration: BoxDecoration(
                color: Colors.black,
                // border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Ajay',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
                navButton("HOME"),
                navButton("PROJECTS"),
                navButton("ABOUT"),
                navButton("CONTACT"),
                Row(
                  children: [
                    const Text(
                      'LIGHT',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(width: 10),
                    Switch(value: true, onChanged: (bool) {}),
                    const SizedBox(width: 10),
                    const Text(
                      'DARK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(26)),
                  child: const Center(
                    child: Text(
                      "Contact me",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      } else {
        return Container(
          width: width / 2,
          height: height / 2,
          decoration: BoxDecoration(
              color: Colors.black,
              // border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Ajay',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    navButton("HOME"),
                    navButton("PROJECTS"),
                    navButton("ABOUT"),
                    navButton("CONTACT"),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'LIGHT',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(width: 10),
                    Switch(value: true, onChanged: (bool) {}),
                    const SizedBox(width: 10),
                    const Text(
                      'DARK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(26)),
                  child: const Center(
                    child: Text(
                      "Contact me",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }
    });
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          )),
    );
  }
}
