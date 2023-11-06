import 'package:flutter/material.dart';
import 'package:refri_project/screens/tab/fab/home_unselected_Icon.dart';

class UnselectedIconFragment extends StatelessWidget {
  const UnselectedIconFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getUnselectedFoodIcon(context)],
    );
  }

  Widget getUnselectedFoodIcon(BuildContext context) => const Column(
        children: [
          UnSelectedIcon(),
        ],
      );
}
