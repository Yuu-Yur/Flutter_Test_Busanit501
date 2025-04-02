import 'package:busanit501_flutter_test/sample_routing/login_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/main_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/my_splash_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/my_splash_screen2.dart';
import 'package:busanit501_flutter_test/sample_routing/pd_test_screen/my_pd_test_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppRouting extends StatelessWidget {
  const MyAppRouting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // 시작 하는 화면을, 스플래쉬 화면으로 교체,
      home: const MySplashScreen2(),
      //라우팅 준비물 1,
      routes: {
        '/main': (context) => const MyMainScreen(),
        '/signup': (context) => const MySignUpScreen(),
        '/login': (context) => const MyLoginScreen(),
        '/pdtest1': (context) => const MyPdTestScreen(),
      },
    );
  }
}
