import 'package:flutter/material.dart';
import 'package:refri_project/screens/home/home_list_screen.dart';
import 'package:refri_project/style/theme.dart';

// 깃 업로드 테스트


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'FoodSave',
    theme: customTheme,
    home: HomeListScreen(),
  );
}
