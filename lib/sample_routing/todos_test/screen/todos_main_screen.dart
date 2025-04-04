import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';

import '../controller/todos_login_controller.dart';

class TodosMainScreen extends StatefulWidget {
  const TodosMainScreen({super.key});

  @override
  State<TodosMainScreen> createState() => _TodosMainScreenState();
}

class _TodosMainScreenState extends State<TodosMainScreen> {
  // 플러터 전용의 저장소에 접근 하는 도구, 가져오기, 설정하기.
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  String? userId;

  // 최초에 화면을 그릴 때 동작함.
  @override
  void initState() {
    super.initState();
    _loadUserId();
  }

  // 화면이 변경시 마다 호출.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadUserId(); // 로그아웃 후 다시 화면 열릴 때 호출됨
  }


  // 보안 저장소에서 로그인한 유저 ID 불러오기
  Future<void> _loadUserId() async {
    String? mid = await secureStorage.read(key: "mid"); // 저장된 ID 가져오기
    // 리액트 비슷한 구조이고, 스테이트 상태가 변경이 되면, 화면도 같이 업데이트
    setState(() {
      userId = mid;
    });
  }

  @override
  Widget build(BuildContext context) {
    final loginController = context.watch<LoginController>();

    return Scaffold(
      appBar: AppBar(title: const Text('메인 화면'),
          actions: [
            // 로그인 상태일 때만 로그아웃 버튼 표시
            if (loginController.isLoggedIn)
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () => loginController.showLogoutDialog(context),
              ),
          ]
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                userId != null ? "환영합니다, $userId님!" : "로그인이 필요합니다.",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const Center(child: FlutterLogo(size: 100)),
            const SizedBox(height: 20),
            if (!loginController.isLoggedIn)
            ElevatedButton(
              //라우팅 2번 째 준비물,
              onPressed: () => Navigator.pushNamed(context, '/signup'),
              child: const Text('회원 가입'),
            ),

            if (!loginController.isLoggedIn)
            OutlinedButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: const Text('로그인'),
            ),

            if (loginController.isLoggedIn)
            OutlinedButton(
              onPressed: () => Navigator.pushNamed(context, '/pdtest1'),
              child: const Text('공공데이터 연동1'),
            ),
            if (loginController.isLoggedIn)
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/todos'),
                child: const Text('todos 연동 리스트'),
              ),
            if (loginController.isLoggedIn)
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/aiTest'),
                child: const Text('ai 연동 테스트'),
              ),
            if (loginController.isLoggedIn)
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/design_sample1'),
                child: const Text('디자인 샘플1 네비게이션 반응형'),
              ),
            if (loginController.isLoggedIn)
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/design_sample2'),
                child: const Text('디자인 샘플2 탭 화면'),
              ),
            if (loginController.isLoggedIn)
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/design_sample3'),
                child: const Text('디자인 샘플3 리스트 안에 리스트 뷰 화면 샘플'),
              ),
          ],
        ),
      ),
    );

  }
}
