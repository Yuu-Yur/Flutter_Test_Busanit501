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
            // TextButton(
            //     onPressed: () => {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         const SnackBar(content: Text("샘플 스낵바 표시"))
            //       )
            //     }, // 스낵바 이용
            //     style: TextButton.styleFrom(
            //       foregroundColor: Colors.amber,
            //       backgroundColor: Colors.blue
            //     ),
            //     child: Text('샘플 텍스트 버튼')
            // )
            Center(
              child: Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('스낵바가 표시되었습니다!')),
                    );
                  },
                  child: const Text('스낵바 보기'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

