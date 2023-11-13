import 'package:flutter/material.dart';
import 'package:refri_project/screens/tab/fab/w_all_icon_item.dart';
import 'package:refri_project/screens/tab/food/all_food_list.dart';
import 'package:refri_project/screens/tab/food/vo_food.dart';

class PopUpItemBody extends StatelessWidget {
  const PopUpItemBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FoodSummary> foodSummaries = allfoodLists.toList();

    return SizedBox(
      height: 400,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    // 검색창 추가하기,
                    AllIconItem(foodSummaries),
                    const Divider(
                      color: Colors.black,
                      thickness: 0.2,
                    ),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('총 n개의 재료 추가하기'),
          ),
        ],
      ),
    );
  }
}