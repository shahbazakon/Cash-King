import 'package:cashking/utils/colors.dart';
import 'package:flutter/material.dart';
import 'UI/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cash King',
      theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: AppColors.bluelite),
      home: const Homepage(),
    );
  }
}
