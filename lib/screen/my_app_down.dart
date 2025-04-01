import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppDown extends StatelessWidget {
  const MyAppDown({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Container(
          width: 120,
          margin: EdgeInsets.all(8),
          color: Colors.orange,
          alignment: Alignment.center,
          child: Text('하단 가로 $index'),
        );
      },
    );
  }
}
