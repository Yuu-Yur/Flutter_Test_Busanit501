import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
////////////////////////////////////////////
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
  ////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 이 위치에 플로팅 액션 버튼을 위치 하기.
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // 버튼 클릭 시 실행할 코드
          },
          child: Icon(Icons.add), // 버튼 내부 아이콘
          backgroundColor: Colors.blue, // 배경색
          tooltip: '추가', // 툴팁 텍스트 (길게 누를 때 표시)
          elevation: 6.0, // 그림자 깊이
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        body: Column(
          children: [
            Builder(
              builder: (context) {
                return Center(
                  child: OutlinedButton(
                    // 클릭 시 실행할 함수
                    onPressed: () =>  _showSnackBar(context),
                    // 버튼 스타일 지정
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),
                    // 버튼에 넣을 위젯
                    child: Text('아웃라인드 버튼'),
                  ),
                );
              }
            ),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  // 클릭 시 실행할 함수
                  onPressed: () =>  _showSnackBar(context),
                  // 버튼 스타일 지정
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  // 버튼에 넣을 위젯
                  child: Text('엘리베이티드 버튼'),
                );
              }
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
// ① 플러터에서 기본으로 제공하는 아이콘입니다.
// 제공되는 아이콘 목록은 다음 링크에서 확인해볼 수 있습니다.
// https://fonts.google.com/icons
                    Icons.home)),
            GestureDetector(
              // 한 번 탭했을 때 실행할 함수
              // onTap: () {
              //   // 출력 결과는 안드로이드 스튜디오의 [Run] 탭에서 확인 가능합니다.
              //   print('on tap');
              // },
              // // 두 번 탭했을 때 실행할 함수
              // onDoubleTap: () {
              //   print('on double tap');
              // },
              // // 길게 눌렀을 때 실행할 함수
              // onLongPress: () {
              //   print('on long press');
              // },
              onPanStart : (details) {
                print('on onPanStart start');
              },
              onPanUpdate: (details) {
                print('onPanUpdate ');
              },
              onPanEnd : (details) {
                print('onPanEnd ');
              },
              // 제스처를 적용할 위젯
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                width: 100.0,
                height: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

