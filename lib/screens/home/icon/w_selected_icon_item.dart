import 'package:flutter/material.dart';
import 'package:refri_project/common/widget/w_height_and_width.dart';
import 'package:refri_project/screens/tab/food/vo_food.dart';
import 'package:velocity_x/velocity_x.dart';


class SelectedIconItem extends StatefulWidget {
  final List<FoodSummary> myfoodList;
  SelectedIconItem(this.myfoodList, {Key? key}) : super(key: key);
  @override
  State<SelectedIconItem> createState() => _SelectedIconItemState();
}

class _SelectedIconItemState extends State<SelectedIconItem> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    List<Widget> items = [];

    for (int i = 0; i < widget.myfoodList.length; i += 4) {
      List<FoodSummary> sublist;

      // 다음 4개의 음식 요약 정보를 가져오거나, 4개보다 적게 남았을 경우 남은 만큼 가져옵니다.
      if (widget.myfoodList.length - i < 4) {
        sublist = widget.myfoodList.sublist(i, i + (widget.myfoodList.length % 4));
      } else {
        sublist = widget.myfoodList.sublist(i, i + 4);
      }

      items.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: sublist.map((foodSummary) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                deviceheight40,
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: InkWell(
                    onTap: () {
                      // 탭 처리
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(foodSummary.foodImagePath, width: deviceWidth * 0.1),
                      ],
                    ),
                  ),
                ),
                (foodSummary.foodName).text.size(deviceWidth * 0.036).bold.make(),
                devicewidth4,
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
