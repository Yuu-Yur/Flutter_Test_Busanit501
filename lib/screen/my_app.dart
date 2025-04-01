import 'package:busanit501_flutter_test/screen/my_app_down.dart';
import 'package:busanit501_flutter_test/screen/my_app_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // my_app_up
            Expanded(child: MyAppUp())
,
            // my_app_down
            Expanded(child: MyAppDown())

          ],
        ),
      ),
    );
  }
}