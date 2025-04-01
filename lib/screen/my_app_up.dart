import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppUp extends StatelessWidget {
  const MyAppUp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('세로 리스트 아이템 $index'),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, hIndex) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.all(8),
                    color: Colors.blueAccent,
                    alignment: Alignment.center,
                    child: Text('가로 $hIndex'),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}