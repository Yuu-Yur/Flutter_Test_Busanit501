import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class MyPdTestScreen extends StatelessWidget {
  const MyPdTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Provider 패턴을 이용해서, 데이터를 받아오면, 화면에 연동하는 작업,
    return ChangeNotifierProvider(
        create: create)
  }
}
