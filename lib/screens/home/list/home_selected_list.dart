import 'package:flutter/material.dart';
import 'package:refri_project/screens/tab/food/my_food_list.dart';
import 'package:refri_project/screens/tab/w_selected_list_item.dart';

class MySelectedList extends StatelessWidget {
  const MySelectedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...myfoodLists.map((element) => SelectedListItem(element)).toList(),
      ],
    );
  }
}
