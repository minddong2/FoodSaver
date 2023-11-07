import 'package:flutter/material.dart';
import 'package:refri_project/screens/tab/fab/w_unselected_food_icon.dart';
import 'package:refri_project/screens/tab/food/food_list.dart';
import 'package:refri_project/screens/tab/food/vo_food.dart';

// class PopUpItemBody extends StatelessWidget {
//   const PopUpItemBody({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             UnselectedIconWidget(),
//             const Divider(
//               color: Colors.black,
//               thickness: 0.2,
//             ),
//             TextButton(
//               onPressed: () {},
//               child: const Text('총 n개의 재료 추가하기'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PopUpItemBody extends StatelessWidget {
//   final List<FoodSummary> foodSummaries;
//
//   const PopUpItemBody({
//     Key? key,
//     required this.foodSummaries,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             UnselectedIconWidget(foodSummaries), // 전달 수정
//             const Divider(
//               color: Colors.black,
//               thickness: 0.2,
//             ),
//             TextButton(
//               onPressed: () {},
//               child: const Text('총 n개의 재료 추가하기'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class PopUpItemBody extends StatelessWidget {
  const PopUpItemBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Assuming you have access to 'foodSummaries' data
    List<FoodSummary> foodSummaries =
        foodLists.toList(); // Initialize 'foodSummaries' with your data

    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            //검색창 추가하기,
            UnselectedIconWidget(foodSummaries),
            // Pass the 'foodSummaries' data
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
      ),
    );
  }
}
