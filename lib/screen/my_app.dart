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
            // Expanded(child: MyAppUp())
            Flexible(
              flex: 1,
                child: MyAppUp())
,
            // my_app_down
            // Expanded(child: MyAppDown())
            Flexible(
                flex: 1,
                // child: MyAppDown())
                child: Stack(
                  children: [
                    // 빨간색 Container
                    Container(
                      height: 300.0,
                      width: 300.0,
                      color: Colors.red,
                    ),
                    // 노란색 Container
                    Container(
                      height: 250.0,
                      width: 250.0,
                      color: Colors.yellow,
                    ),
                    // 파란색 Container
                    Container(
                      height: 200.0,
                      width: 200.0,
                      color: Colors.blue,
                    ),
                  ],
                ),)
          ],
        ),
      ),
    );
  }
}