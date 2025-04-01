import 'package:busanit501_flutter_test/sample_routing/login_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/main_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/my_splash_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppRouting extends StatelessWidget {
  const MyAppRouting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyLoginScreen(),
      routes: {
        '/main': (context) => const MyMainScreen(),
        '/signup': (context) => const MySignUpScreen(),
        '/login': (context) => const MyLoginScreen(),
      },
    );
  }
}
