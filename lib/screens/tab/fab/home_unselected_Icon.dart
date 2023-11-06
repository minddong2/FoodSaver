import 'package:flutter/material.dart';
import 'package:refri_project/screens/tab/fab/w_unselected_icon_item.dart';
import 'package:refri_project/screens/tab/food_list.dart';


class UnselectedIcon extends StatelessWidget {
  const UnselectedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...foodLists.map((element) => UnselectedIconItem(element)).toList(),
      ],
    );
  }
}
