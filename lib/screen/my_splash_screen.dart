import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.amberAccent,
          ),
          child: Center(
            // child: Text("Splash Screen!!")
            child: Image.asset('assets/images/logo.jpg')
              ),
        ),
      ),
    );
  }
}
