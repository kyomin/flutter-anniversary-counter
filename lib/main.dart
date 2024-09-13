import 'package:flutter/material.dart';
import 'package:anniversary_counter/screen/home_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        fontFamily: 'sunflower',  // 전역에서 사용할 기본 폰트 설정
        textTheme: TextTheme(
            displayLarge: TextStyle(
                color: Colors.white, fontSize: 40.0, fontFamily: 'parisienne'),
            displayMedium: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w700),
            bodyLarge: TextStyle(color: Colors.white, fontSize: 20.0),
            bodyMedium: TextStyle(color: Colors.white, fontSize: 15.0))),
    home: HomeScreen(),
  ));
}
