import 'package:flutter/material.dart';
import 'package:refri_project/screens/tab/fab/w_all_icon_item.dart';
import 'package:refri_project/screens/tab/food/vo_food.dart';

class AllIcon extends StatelessWidget {
  final List<FoodSummary> foodSummaries;

  const AllIcon(this.foodSummaries, {super.key});

  @override
  Widget build(BuildContext context) {
    return AllIconItem(foodSummaries);
  }
}
