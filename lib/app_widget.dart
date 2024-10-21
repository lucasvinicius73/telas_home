import 'package:flutter/material.dart';
import 'package:telas_home/screens/login_page.dart';
import 'package:telas_home/screens/tinder_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const LoginPage(),
        "/tinder": (context) => const TinderScreen()
      },
    );
  }
}
