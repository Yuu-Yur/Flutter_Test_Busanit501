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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // child: Text("Splash Screen!!")
            children:[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800
                    ),
                      '나의 첫 Splash 화면'),
                  Image.asset(
                    'assets/images/logo.jpg',
                    width: 400,
                  ),
                  SizedBox(height: 16,),
                  CircularProgressIndicator(),
                ],
              )

            ]
              ),
        ),
      ),
    );
  }
}
