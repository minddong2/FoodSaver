import 'package:flutter/material.dart';
import 'package:refri_project/screens/tab/food_list.dart';
import 'package:refri_project/screens/tab/w_selected_list_item.dart';

class HomeSelectedList extends StatelessWidget {
  const HomeSelectedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...foodLists.map((element) => SelectedListItem(element)).toList(),
      ],
    );
  }
}
