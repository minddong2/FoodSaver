import 'package:flutter/material.dart';
import 'package:refri_project/common/widget/w_height_and_width.dart';
import 'package:refri_project/screens/home/icon/w_selected_icon_item.dart';
import 'package:refri_project/screens/tab/food/my_food_list.dart';
import 'package:refri_project/screens/tab/food/vo_food.dart';

class MyFoodIconFragment extends StatelessWidget {
  MyFoodIconFragment({super.key});

  @override
  List<FoodSummary> myfoodList = myfoodLists;

  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: SelectedIconItem(myfoodLists),
          ),
        ),
      ],
    );
  }
}