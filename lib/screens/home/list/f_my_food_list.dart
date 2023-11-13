import 'package:flutter/material.dart';
import 'package:refri_project/common/widget/w_height_and_width.dart';
import 'package:refri_project/screens/home/list/home_selected_list.dart';

class MyFoodListFragment extends StatelessWidget {
  const MyFoodListFragment({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            devicewidth35,
            Text('상품', style: TextStyle(fontSize: (deviceWidth * 0.04), fontWeight: FontWeight.bold)),
            devicewidth15,
            Text('재료명', style: TextStyle(fontSize: (deviceWidth * 0.04), fontWeight: FontWeight.bold)),
            devicewidth4,
            Text('유통기한', style: TextStyle(fontSize: (deviceWidth * 0.04), fontWeight: FontWeight.bold)),
          ],
        ),
        const Expanded(
          child: SingleChildScrollView(
            child: MySelectedList(),
          ),
        ),
      ],
    );
  }
}