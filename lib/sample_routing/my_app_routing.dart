import 'package:busanit501_flutter_test/sample_routing/ai_test/screen/ai_test_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/login_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/main_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/my_splash_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/my_splash_screen2.dart';
import 'package:busanit501_flutter_test/sample_routing/pd_test_screen/my_pd_test_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/sample_design/list_of_listView_sample.dart';
import 'package:busanit501_flutter_test/sample_routing/sample_design/navigation_mode_sample1.dart';
import 'package:busanit501_flutter_test/sample_routing/sample_design/tap_mode_sample2.dart';
import 'package:busanit501_flutter_test/sample_routing/signup_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/todos_test/screen/todos_add_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/todos_test/screen/todos_edit_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/todos_test/screen/todos_list_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/todos_test/screen/todos_login.dart';
import 'package:busanit501_flutter_test/sample_routing/todos_test/screen/todos_main_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/todos_test/screen/todos_signup_screen.dart';
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
        '/main': (context) => const TodosMainScreen(),
        '/signup': (context) => const TodosSignupScreen(),
        '/login': (context) => const LoginScreen(),
        '/pdtest1': (context) => const MyPdTestScreen(),
        '/todos': (context) => const TodosScreen(),
        '/todoCreate': (context) => const TodoCreateScreen(),
        '/todoDetail': (context) => TodoDetailScreen(tno: ModalRoute.of(context)!.settings.arguments as int),
        '/aiTest': (context) => AiImageScreen(),
        '/design_sample1': (context) => ResponsiveNavBarPage(),
        '/design_sample2': (context) => MaterialHomePage(),
        '/design_sample3': (context) => Sample3ListOfListView(),


      },
    );
  }
}
