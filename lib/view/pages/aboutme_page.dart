import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/main.dart';
import 'package:provider/provider.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return AboutMe();
          } else {
            return _buildMobileView();
          }
        },
      ),
    );
  }



  Widget _buildMobileView() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/svgs/img.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Hola Mundo!",
            style: TextStyle(
              fontSize: 18,
              color: lightGray,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Soy Gabriel,\nDesarrollador Backend",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.gite, color: lightGray),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.link, color: lightGray),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 40,
            width: 110,
            decoration: BoxDecoration(
              border: Border.all(color: charcoal),
            ),
            child: const Center(
              child: Text(
                'Contact Me',
                style: TextStyle(color: charcoal),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {
          if (kDebugMode) {
            print("$title clicked");
          }
        },
        child: Text(
          title,
          style: TextStyle(
              color:
                  context.read<ThemeNotifier>().isDarkMode ? charcoal : gray),
        ),
      ),
    );
  }
}
  class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
         
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '<Hello World/>',
                        style: TextStyle(
                          fontSize: 21,
                          color: context.read<ThemeNotifier>().isDarkMode
                              ? charcoal
                              : gray,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "I'm Ajay Krishna",
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.w500,
                              color: context.read<ThemeNotifier>().isDarkMode
                                  ? charcoal
                                  : gray,
                            ),
                          ),
                          Text(
                            "Flutter",
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              color: context.read<ThemeNotifier>().isDarkMode
                                  ? charcoal
                                  : gray,
                            ),
                          ),
                          Text(
                            "Developer",
                            style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              color: context.read<ThemeNotifier>().isDarkMode
                                  ? charcoal
                                  : gray,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          SvgPicture.asset(
                            colorFilter: ColorFilter.mode(
                                context.read<ThemeNotifier>().isDarkMode
                                    ? charcoal
                                    : gray,
                                BlendMode.srcIn),
                            'assets/svgs/github.svg',
                            height: 50,
                            width: 50,
                          ),
                          SvgPicture.asset(
                            colorFilter: ColorFilter.mode(
                                context.read<ThemeNotifier>().isDarkMode
                                    ? charcoal
                                    : gray,
                                BlendMode.srcIn),
                            'assets/svgs/linkdein.svg',
                            height: 47,
                            width: 47,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: context.read<ThemeNotifier>().isDarkMode
                                  ? charcoal
                                  : gray),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Contact Me',
                                style: TextStyle(
                                    color:
                                        context.read<ThemeNotifier>().isDarkMode
                                            ? charcoal
                                            : gray),
                              ),
                              Icon(Icons.arrow_downward_sharp,
                                  color:
                                      context.read<ThemeNotifier>().isDarkMode
                                          ? charcoal
                                          : gray)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 480,
                  height: 480,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/svgs/img.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }}