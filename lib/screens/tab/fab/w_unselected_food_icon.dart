import 'package:flutter/material.dart';
import 'package:refri_project/screens/tab/fab/unselected_Icon.dart';
import 'package:refri_project/screens/tab/food/vo_food.dart';

// class UnselectedIconWidget extends StatelessWidget {
//   const UnselectedIconWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [//검색창 들어가야함,
//       getUnselectedFoodIcon(context)],
//     );
//   }
//
//   Widget getUnselectedFoodIcon(BuildContext context) => const Column(
//         children: [
//
//           UnselectedIcon(FoodSummary),
//         ],
//       );
// }

class UnselectedIconWidget extends StatelessWidget {
  final List<FoodSummary> foodSummaries;

  const UnselectedIconWidget(this.foodSummaries, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getUnselectedFoodIcon(context, foodSummaries),
      ],
    );
  }

  Widget getUnselectedFoodIcon(
          BuildContext context, List<FoodSummary> foodSummaries) =>
      Column(
        children: [
          UnselectedIcon(foodSummaries),
        ],
      );
}
