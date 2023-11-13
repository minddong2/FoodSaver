import 'package:flutter/material.dart';
import 'package:refri_project/common/widget/w_height_and_width.dart';
import 'package:refri_project/screens/tab/food/vo_food.dart';
import 'package:velocity_x/velocity_x.dart';

class AllIconItem extends StatefulWidget {
  final List<FoodSummary> foodSummaries;

  const AllIconItem(this.foodSummaries, {Key? key}) : super(key: key);

  @override
  State<AllIconItem> createState() => _AllIconItemState();
}

class _AllIconItemState extends State<AllIconItem> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    List<Widget> items = [];

    // 다음 4개의 음식 요약 정보를 가져오거나, 4개보다 적게 남았을 경우 남은 만큼 가져옵니다.
    for (int i = 0; i < widget.foodSummaries.length; i += 4) {
      List<FoodSummary> sublist;
      if (widget.foodSummaries.length - i < 4) {
        sublist = widget.foodSummaries.sublist(i, i + (widget.foodSummaries.length % 4));
      } else {
        sublist = widget.foodSummaries.sublist(i, i + 4);
      }

      items.add(
        Row(
          children: sublist.map((foodSummary) {
            return Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: InkWell(
                    onTap: () {
                    },
                    child: Image.asset(foodSummary.foodImagePath, width: deviceWidth * 0.1),
                  ),
                ), // 간격을 만들기 위해 SizedBox 사용
                (foodSummary.foodName).text.size(deviceWidth * 0.036).bold.make(),
                devicewidth5_1,
              ],
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