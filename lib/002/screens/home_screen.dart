import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const twentyFiveMinutes = 60 * 25;

  int totalSeconds = twentyFiveMinutes; // 1500 sec

  int successCount = 0;

  bool isRunning = false;

  // 사용자가 타이머 시작 버튼을 눌렀을 때만 초기화 한다.
  late Timer timer;

  // 사용자가 타이머 시작 버튼을 누르면, 타이머를 초기화한다.
  void onStartPressed() {
    isRunning = true;
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
  }

  // 1초마다 실행한다.
  void onTick(Timer timer) {
    if (isRunning == false) {
      return;
    }

    if (totalSeconds == 0) {
      setState(() {
        totalSeconds = twentyFiveMinutes;
        isRunning = false;
        successCount = successCount + 1;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  // 타이머를 일시 정지한다.
  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  // 포맷을 만든다.
  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2, 7);
  }

  void onResetPressed() {
    setState(() {
      totalSeconds = twentyFiveMinutes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 80.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(isRunning
                        ? Icons.pause
                        : Icons.play_circle_filled_rounded),
                    color: Theme.of(context).cardColor,
                    iconSize: 80.0,
                    onPressed: isRunning ? onPausePressed : onStartPressed,
                  ),
                  TextButton(
                    onPressed: onResetPressed,
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pomodoros',
                          style: TextStyle(
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '$successCount',
                          style: TextStyle(
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
