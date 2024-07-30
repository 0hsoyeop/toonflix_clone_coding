import 'package:flutter/material.dart';
import 'package:toonflix_clone_coding/003/models/webtoon.dart';
import 'package:toonflix_clone_coding/003/services/api_service.dart';

class ToonflixHomeScreen extends StatelessWidget {
  ToonflixHomeScreen({super.key});

  final Future<List<Webtoon>> webtoons = ApiService.getTodaysToons();

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
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var webtoon = snapshot.data![index];
                return Text(webtoon.title);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 20.0);
              },
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
