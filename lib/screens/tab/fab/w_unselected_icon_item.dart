import 'package:flutter/material.dart';
import 'package:refri_project/common/widget/w_height_and_width.dart';
import 'package:refri_project/screens/tab/food/vo_food.dart';
import 'package:velocity_x/velocity_x.dart';

class UnselectedIconItem extends StatefulWidget {
  final List<FoodSummary> foodSummaries;

  const UnselectedIconItem(this.foodSummaries, {Key? key}) : super(key: key);

  @override
  State<UnselectedIconItem> createState() => _UnselectedIconItemState();
}

class _UnselectedIconItemState extends State<UnselectedIconItem> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];

    for (int i = 0; i < widget.foodSummaries.length; i += 4) {
      // 다음 4개의 음식 요약 정보를 가져오거나, 4개보다 적게 남았을 경우 남은 만큼 가져옵니다.
      List<FoodSummary> sublist = widget.foodSummaries.sublist(i, i + 4);

      items.add(
        Row(
          children: sublist.map((foodSummary) {
            return Expanded(
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: InkWell(
                      onTap: () {
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(foodSummary.foodImagePath, width: 40),
                        ],
                      ),
                    ),
                  ),
                  height5, // 간격을 만들기 위해 SizedBox 사용
                  (foodSummary.foodName).text.size(14).bold.make(),
                  height10,
                ],
              ),
            );
          }).toList(),
        ),
      );
    }

    return Column(
      children: items,
    );
  }
}