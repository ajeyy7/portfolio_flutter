import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view/pages/fullview.dart';


import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Define your themes
  final ThemeData lightTheme = ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: lightGray,
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light, // Light mode settings
  );

  final ThemeData darkTheme = ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: charcoal,
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark, // Dark mode settings
  );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme, // Light theme as default
            darkTheme: darkTheme, // Dark theme settings
            themeMode: themeNotifier.isDarkMode
                ? ThemeMode.dark
                : ThemeMode.light, // Control theme dynamically
            home: const FullView(),
          );
        },
      ),
    );
  }
}

class ThemeNotifier extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  // Toggle theme mode
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
