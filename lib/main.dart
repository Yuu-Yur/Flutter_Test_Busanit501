import 'package:busanit501_flutter_test/sample_routing/login_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/my_app_routing.dart';
import 'package:busanit501_flutter_test/sample_routing/my_splash_screen.dart';
import 'package:busanit501_flutter_test/sample_routing/pd_test_controller/food_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  // runApp(MyApp());
  // 프로바이더 등록 작업,
  // runApp(MyAppRouting());
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => FoodController())
        ],
    child: const MyAppRouting(),)
  );
}







