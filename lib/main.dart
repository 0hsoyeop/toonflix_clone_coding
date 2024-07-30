import 'package:flutter/material.dart';
import 'package:toonflix_clone_coding/002/screens/home_screen.dart';
import 'package:toonflix_clone_coding/003/screens/toonflix_home_screen.dart';
import 'package:toonflix_clone_coding/003/services/api_service.dart';
import '001/widgets/main-001.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: ToonflixHomeScreen(),
    );
  }
}
