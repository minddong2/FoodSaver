import 'package:flutter/material.dart';
import 'package:refri_project/screens/demo_reorderable_count.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeSelectedIcon extends StatelessWidget {
  HomeSelectedIcon({super.key});

  @override
  Widget build(BuildContext context) {

    return
      Stack(

        children: [
          Container(

            color: Colors.red,

            width: double.infinity,
            height: 35,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "냉장".text.make(),
              ],
            ),
          ),

          IngreDient(type: 'Cold'),
          Container(
            margin: EdgeInsets.only(top: (MediaQuery.of(context).size.height / 2) -70),
            color: Colors.red,
            width: double.infinity,
            height: 35,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "냉동".text.make()
              ],
            ),
          ),
          IngreDient(type: 'Iced'),
        ],
      );
  }
}

class ColdFoodIcon extends StatelessWidget {
  const ColdFoodIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.more_horiz,
                size: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

typedef Next = Widget Function();

class Item {
  String name = "";
  Next next;

  Item(this.name, this.next);
}

class IngreDient extends StatelessWidget {
  final String type;

  const IngreDient({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // print(type);
    return Container(
        margin: EdgeInsets.only(top: type == 'Cold' ? 10 : (height / 2) - 60),
        height: (height / 2) - 80,
        child: DemoReorderableGrid(type: type));
  }
}