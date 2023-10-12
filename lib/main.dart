import 'package:flutter/material.dart';
import 'package:siakad/module/login/login_page.dart';
import 'package:siakad/utils/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIAKAD',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Styles.primaryBlue),
      ),
      home: LoginPage(),
    );
  }
}
