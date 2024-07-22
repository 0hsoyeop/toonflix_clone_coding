import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 100.0),
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 22.0,
                ),
              ),
              const SizedBox(height: 5.0),
              const Text(
                '\$5 194 127',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2B33A),
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 20.0),
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
