import 'package:flutter/material.dart';
import 'package:refri_project/screens/tab/fab/all_Icon.dart';
import 'package:refri_project/screens/tab/food/vo_food.dart';


class AllIconWidget extends StatelessWidget {
  final List<FoodSummary> foodSummaries;

  const AllIconWidget(this.foodSummaries, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getAllFoodIcon(context, foodSummaries),
      ],
    );
  }

  Widget getAllFoodIcon(
          BuildContext context, List<FoodSummary> foodSummaries) =>
      Column(
        children: [
          AllIcon(foodSummaries),
        ],
      );
}
