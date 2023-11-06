import 'package:flutter/material.dart';
import 'package:refri_project/screens/home/list/home_selected_list.dart';
import 'package:refri_project/screens/tab/fab/w_unselected_food_icon.dart';

class PopUpItemBody extends StatelessWidget {
  const PopUpItemBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          UnselectedIconFragment(),
          const Divider(
            color: Colors.black,
            thickness: 0.2,
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
