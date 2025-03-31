import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body:
       SizedBox(
         width: double.infinity,
         child: Column(
           children: [
             Text('busanit'),
             Text('테스트 샘플 UI')
           ],
         ),
       )
      ),
    )
  );
}

