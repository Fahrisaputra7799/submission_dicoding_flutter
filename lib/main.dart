import 'package:flutter/material.dart';
import 'package:proyek_akhir_dicoding/on_boarding_page1.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage1(),
    );
  }
}