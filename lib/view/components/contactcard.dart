import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 500,
        width: width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              LayoutBuilder(builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name:',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 80,
                                  height: 1.2,
                                  color: Colors.orangeAccent),
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Your Name Here...',
                                  labelStyle: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 80,
                                  height: 1.2,
                                  color: Colors.orangeAccent),
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Your Email Here...',
                                  labelStyle: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Message',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 80,
                                  height: 1.2,
                                  color: Colors.orangeAccent),
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Your Message Here...',
                                  labelStyle: TextStyle(color: Colors.white)),
                              maxLines: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name:',
                              style: TextStyle(
                                  fontSize: width / 35,
                                  height: 1.2,
                                  color: Colors.orangeAccent),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintStyle: TextStyle(
                                      fontSize: width / 50,
                                      color: Colors.white),
                                  hintText: 'Enter Your Name Here...',
                                  labelStyle:
                                      const TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                  fontSize: width / 35,
                                  height: 1.2,
                                  color: Colors.orangeAccent),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintStyle: TextStyle(
                                      fontSize: width / 50,
                                      color: Colors.white),
                                  hintText: 'Enter Your Email Here...',
                                  labelStyle:
                                      const TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Message',
                              style: TextStyle(
                                  fontSize: width / 35,
                                  height: 1.2,
                                  color: Colors.orangeAccent),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintStyle: TextStyle(
                                      fontSize: width / 50,
                                      color: Colors.white),
                                  hintText: 'Enter Your Message Here...',
                                  labelStyle:
                                      const TextStyle(color: Colors.white)),
                              maxLines: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              }),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Send'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
