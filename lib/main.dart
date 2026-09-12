import 'package:assignment4_contact_app/common/app_theme.dart';
import 'package:assignment4_contact_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:AppTheme.theme,
      home:  HomeScreen(),
    );
  }
}

