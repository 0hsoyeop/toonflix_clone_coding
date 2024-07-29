import 'package:flutter/material.dart';

class ToonflixHomeScreen extends StatelessWidget {
  const ToonflixHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Toonflix',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
    );
  }
}
