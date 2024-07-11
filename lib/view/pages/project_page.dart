import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 10, vertical: 20),
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.start,
              "My projects",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent,
                  height: 1.2),
            ),
            const SizedBox(height: 60),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/svgs/4102879_971.svg',
                  height: 250,
                  width: 250,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Project 1",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 70,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent,
                            height: 1.2),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "Nlodfhgnetegtriuhgn\nfbfnhgbeitgnviehurcgyrtycgrejsgmpsj/nverangvbaeuyvrtgvfbreghyt\nbvialebtgiu/nrtavgeailgrvbfshbgrtvilurghbnonj\ndfnbvvrjbnjdanfguethh;oafuhbourfhoroguer\nuoguerbugbiueagibkergbj,jstegbsetge",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent,
                            height: 1.2),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  'assets/svgs/4102879_971.svg',
                  height: 250,
                  width: 250,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Project 2",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 70,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent,
                            height: 1.2),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "Nlodfhgnetegtriuhgn\nfbfnhgbeitgnviehurcgyrtycgrejsgmpsj/nverangvbaeuyvrtgvfbreghyt\nbvialebtgiu/nrtavgeailgrvbfshbgrtvilurghbnonj\ndfnbvvrjbnjdanfguethh;oafuhbourfhoroguer\nuoguerbugbiueagibkergbj,jstegbsetge",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent,
                            height: 1.2),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/svgs/4102879_971.svg',
                  height: 250,
                  width: 250,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Project 3",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 70,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent,
                            height: 1.2),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "Nlodfhgnetegtriuhgn\nfbfnhgbeitgnviehurcgyrtycgrejsgmpsj/nverangvbaeuyvrtgvfbreghyt\nbvialebtgiu/nrtavgeailgrvbfshbgrtvilurghbnonj\ndfnbvvrjbnjdanfguethh;oafuhbourfhoroguer\nuoguerbugbiueagibkergbj,jstegbsetge",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent,
                            height: 1.2),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  'assets/svgs/4102879_971.svg',
                  height: 250,
                  width: 250,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Project 4",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 70,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent,
                            height: 1.2),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "Nlodfhgnetegtriuhgn\nfbfnhgbeitgnviehurcgyrtycgrejsgmpsj/nverangvbaeuyvrtgvfbreghyt\nbvialebtgiu/nrtavgeailgrvbfshbgrtvilurghbnonj\ndfnbvvrjbnjdanfguethh;oafuhbourfhoroguer\nuoguerbugbiueagibkergbj,jstegbsetge",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent,
                            height: 1.2),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
