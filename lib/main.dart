import 'package:flutter/material.dart';
import 'package:refri_project/screens/home/list/home_list_screen.dart';
import 'package:refri_project/style/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'FoodSave',
    theme: customTheme,
    home: HomeListScreen(),
  );
}
