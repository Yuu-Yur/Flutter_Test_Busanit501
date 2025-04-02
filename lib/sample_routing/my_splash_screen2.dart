import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySplashScreen2 extends StatefulWidget {
  const MySplashScreen2({super.key});

  @override
  State<MySplashScreen2> createState() => _MySplashScreen2State();
}

class _MySplashScreen2State extends State<MySplashScreen2> {

  @override
  void initState() {
    super.initState();
    //현재 화면을 , 특정 시간 후에, 메인 화면으로 이동하는게 목적.
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/main');
    });
  }

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
