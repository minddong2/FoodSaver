import 'package:flutter/material.dart';
import 'package:refri_project/screens/tab/fab/w_unselected_icon_item.dart';
import 'package:refri_project/screens/tab/food/vo_food.dart';

class UnselectedIcon extends StatelessWidget {
  final List<FoodSummary> foodSummaries;

  const UnselectedIcon(this.foodSummaries, {super.key});

  @override
  Widget build(BuildContext context) {
    return UnselectedIconItem(foodSummaries);
  }
}
