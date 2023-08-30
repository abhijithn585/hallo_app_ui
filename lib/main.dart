import 'package:flutter/material.dart';
import 'package:ui/widgets/bottom_nav_bar.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UI sample",
      home: BottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
