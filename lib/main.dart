import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:uiclock/lcd_led.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedTime = DateFormat('HH:mm').format(now);
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
              child: SizedBox(
            width: 266,
            height: 96,
            child: LedDigits(
              string: formattedTime,
              numberOfLeds: 5,
              spacing: 2,
              backgroundColor: Colors.white,
              onColor: Colors.black,
              offColor: Colors.grey,
            ),
          ))),
    );
  }
}
