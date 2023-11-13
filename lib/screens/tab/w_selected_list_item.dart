import 'package:flutter/material.dart';
import 'package:refri_project/common/widget/w_height_and_width.dart';
import 'package:refri_project/screens/tab/food/vo_food.dart';
import 'package:velocity_x/velocity_x.dart';

class SelectedListItem extends StatelessWidget {
  final FoodSummary foodSummary;

  const SelectedListItem(this.foodSummary, {super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(150),
            ),
            child: InkWell(
              onTap: () {
                // 탭 처리
              },
              child: Image.asset(foodSummary.foodImagePath, width: deviceWidth * 0.1),
            ),
          ),
          devicewidth20,
          (foodSummary.foodName).text.size(deviceWidth * 0.036).bold.make(),
        ],
      ),
    );
  }
}
