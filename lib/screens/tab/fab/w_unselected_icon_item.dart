import 'package:flutter/material.dart';
import 'package:refri_project/common/widget/w_empty_expanded.dart';
import 'package:refri_project/common/widget/w_height_and_width.dart';
import 'package:refri_project/screens/tab/vo_food.dart';
import 'package:velocity_x/velocity_x.dart';

class UnselectedIconItem extends StatelessWidget {
  final FoodSummary foodSummary;

  const UnselectedIconItem(this.foodSummary, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(foodSummary.foodImagePath, width: 50),
          height10,
          (foodSummary.foodName).text.size(16).bold.make(),
        ],
      ),
    );
  }
}
