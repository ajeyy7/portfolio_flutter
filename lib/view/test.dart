import 'package:flutter/material.dart';

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildIntroSection(),
            _buildProjectsSection(),
            _buildAboutMeSection(),
            _buildContactSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildIntroSection() {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('your_profile_image_url'),
          ),
          SizedBox(height: 10.0),
          Text(
            'Your Name',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Welcome to my portfolio! I showcase my projects and skills here.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildProjectsSection() {
    // Replace with your actual projects implementation
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          _buildProjectCard('Project 1', 'Description of Project 1'),
          SizedBox(height: 10.0),
          _buildProjectCard('Project 2', 'Description of Project 2'),
          SizedBox(height: 10.0),
          _buildProjectCard('Project 3', 'Description of Project 3'),
        ],
      ),
    );
  }

  Widget _buildProjectCard(String title, String description) {
    return Card(
      elevation: 3.0,
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }

  Widget _buildAboutMeSection() {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Fusce a urna luctus, maximus quam eu, pellentesque velit. '
            'Praesent ut metus consequat, finibus nunc ac, vestibulum magna.',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }

  Widget _buildContactSection() {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blueGrey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Me',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Feel free to get in touch!',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'Email: your_email@example.com',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'Phone: +1234567890',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
