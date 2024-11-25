import 'package:crud/screens/board_screen.dart';
import 'package:crud/screens/join_screen.dart';
import 'package:crud/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _checkLoginStatus(),
        builder: (context, snapshot) {
          // 로딩 중인 경우
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text("CRUD"),
            );
          } else {
            // 로그인 된 경우
            if (snapshot.hasData && snapshot.data == true) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text("CRUD"),
                  centerTitle: true,
                  elevation: 2,
                  actions: [
                    // 로그아웃 버튼
                    IconButton(
                      onPressed: () {
                        print("로그아웃");
                      },
                      icon: const Icon(Icons.logout_outlined),
                    ),
                  ],
                ),
                body: const LoginScreen(),
              );
            } // 로그인 안 되어 있는 경우
            else {
              return Scaffold(
                appBar: AppBar(
                  title: const Text("CRUD"),
                  centerTitle: true,
                  elevation: 2,
                  backgroundColor: Colors.cyan.shade100,
                  actions: [
                    // 로그인 버튼
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.login_outlined),
                    ),
                    // 회원가입 버튼
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 8.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const JoinScreen(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.add_circle_outline_rounded),
                      ),
                    ),
                  ],
                ),
                // 에러 발생해야 함
                body: const BoardScreen(),
              );
            }
          }
        },
      ),
    );
  }

  Future<bool> _checkLoginStatus() async {
    String? isLoggedIn = await secureStorage.read(key: 'isLoggedIn');
    return isLoggedIn == 'true';
  }
}
