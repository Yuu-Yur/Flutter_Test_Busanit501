import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("샘플 텍스트 위젯",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
                color: Colors.cyan
              ),),
            ),
            TextButton(onPressed: (){},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.amber,
                  backgroundColor: Colors.blue
                ),
                child: Text('샘플 텍스트 버튼'))
          ],
        ),
      ),
    );
  }
}

