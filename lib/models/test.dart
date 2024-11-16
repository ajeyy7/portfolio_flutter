import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/chatbubble.dart';
import 'package:portfolio_flutter/view/test.dart';




class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
      
    });
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.994),
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "Cod",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
            Text(
              "er",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 24, ),
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  MyPortfolioApp()));
            },
            child: Container(
              height: 40,
              width: 110,
              decoration: const BoxDecoration(),
              child: const Center(
                child: Text(
                  'About Me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          _buildNavItem("Services"),
          _buildNavItem("Portfolio"),
          _buildNavItem("Testimonials"),
          _buildNavItem("Blog"),
          _buildNavItem("Contact Us"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 40,
              width: 110,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white), ),
              child: const Center(
                child: Text(
                  'Hire Me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Desktop view
            return _buildDesktopView();
          } else {
            // Mobile view
            return _buildMobileView();
          }
        },
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
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildDesktopView() {
    return Row(children: [
      Container(
        width: 600,
        height: 600,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Image.asset(
          'assets/svgs/Picsart_24-11-15_14-35-06-552.jpg',
          fit: BoxFit.cover,
        ),
      ),
      Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ChatBubble(),
              const SizedBox(height: 8),
              const Text(
                "Mr. Ajay Krishna",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Text(
                "A Professional Mobile Application Developer",
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        ),
                    child: const Center(
                      child: Text(
                        'Download CV',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Center(
                      child: Text(
                        'My Work',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  Widget _buildMobileView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Image.asset(
                'assets/svgs/Picsart_24-11-15_14-35-06-552.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ChatBubble(),
                const SizedBox(height: 8),
                const Text(
                  "Mr. Ajay Krishna",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.white),
                ),
                const SizedBox(height: 8),
                const Text(
                  "A Professional Mobile Application Developer",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print("Download CV clicked");
                    }
                  },
                  style: ElevatedButton.styleFrom(
                  
                  ),
                  child: const Text("Download CV"),
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print("My Work clicked");
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(),
                  ),
                  child: const Text("My Work"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

