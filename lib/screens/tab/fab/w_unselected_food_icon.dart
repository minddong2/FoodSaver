import 'package:flutter/material.dart';
import 'package:refri_project/common/widget/w_empty_expanded.dart';
import 'package:refri_project/common/widget/w_height_and_width.dart';
import 'package:refri_project/screens/home/list/home_selected_list.dart';
import 'package:velocity_x/velocity_x.dart';

class UnselectedIconFragment extends StatelessWidget {
  const UnselectedIconFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getUnselectedFoodIcon(context)],
    );
  }

  Widget getUnselectedFoodIcon(BuildContext context) => Column(
        children: [
          const HomeSelectedList(),
        ],
      );
}
