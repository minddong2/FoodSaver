import 'package:flutter/material.dart';
import 'package:refri_project/screens/home/list/home_selected_list.dart';

class MyFoodListFragment extends StatelessWidget {
  const MyFoodListFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            SizedBox(width: 10),
            Text('상품', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(width: 30),
            Text('재료명', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(width: 150),
            Text('유통기한', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                getMyFoodList(context),
              ],
            ),
          ),
        ),
      ],
    );
  }



  Widget getMyFoodList(BuildContext context) => const Column(
    children: [
      MySelectedList(),
    ],
  );
}