import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySignUpScreen extends StatelessWidget {
  const MySignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('회원 가입')),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                    children: [
                      const TextField(
                          decoration: InputDecoration(labelText: '이메일')),
                      const SizedBox(height: 16),
                      const TextField(
                          decoration: InputDecoration(labelText: '패스워드')),
                      const SizedBox(height: 16),
                      const TextField(
                          decoration: InputDecoration(labelText: '패스워드 확인')),
                      const SizedBox(height: 16),
                    ]
                )
            )
        )
    );
  }
}
