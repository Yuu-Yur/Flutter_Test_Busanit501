import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('스낵바가 표시되었습니다!!!!!!'), // 스낵바 안에 표시할 텍스트

      duration: Duration(seconds: 3), // 스낵바가 화면에 표시되는 시간

      backgroundColor: Colors.indigo, // 배경색 지정

      behavior: SnackBarBehavior.fixed, // fixed 또는 floating 설정 가능

      elevation: 6.0, // 그림자 깊이 (부유 느낌)

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), // 모서리 둥글게
      ),

      action: SnackBarAction(
        label: '클릭', // 버튼 텍스트
        textColor: Colors.yellow, // 텍스트 색상

        onPressed: () {
          // 클릭 이벤트 처리: 예를 들어 로그 출력
          print('SnackBar의 클릭 액션 실행됨');
        },
      ),
    );

    // ScaffoldMessenger를 통해 현재 context에 SnackBar 표시
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

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
                builder: (context) => TextButton(
                  onPressed: () => _showSnackBar(context),
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

