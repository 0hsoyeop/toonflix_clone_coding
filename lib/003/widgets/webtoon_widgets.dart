import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix_clone_coding/003/screens/detail_screen.dart';

class WebtoonWidgets extends StatelessWidget {
  final String title;
  final String thumb;
  final String id;

  const WebtoonWidgets(
      {super.key, required this.title, required this.thumb, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) =>
                    DetailScreen(title: title, thumb: thumb, id: id)));
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              width: 180.0,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 12.0,
                    offset: const Offset(10, 15),
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ],
              ),
              child: Image.network(thumb),
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
