import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/view/pages/fullview.dart';
import 'package:portfolio_flutter/view_model/themes.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeData lightTheme = ThemeData(
      fontFamily: 'Montserrat',
      scaffoldBackgroundColor: lightGray,
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      textTheme: const TextTheme(
          bodyLarge: TextStyle(color: charcoal),
          bodyMedium: TextStyle(color: gray)),
      iconTheme: const IconThemeData(color: charcoal));

  final ThemeData darkTheme = ThemeData(
      fontFamily: 'Montserrat',
      scaffoldBackgroundColor: charcoal,
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      textTheme: const TextTheme(
          bodyLarge: TextStyle(color: lightGray),
          bodyMedium: TextStyle(color: white)),
      iconTheme: const IconThemeData(color: lightGray));

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode:
                themeNotifier.isDarkMode ? ThemeMode.dark : ThemeMode.light,
            home: const FullView(),
          );
        },
      ),
    );
  }
}
