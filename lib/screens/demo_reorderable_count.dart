
import 'package:flutter/material.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';
import 'package:velocity_x/velocity_x.dart';

class DemoReorderableGrid extends StatefulWidget {
  final String type;
  const DemoReorderableGrid({Key? key, required this.type}) : super(key: key);
  @override
  State<DemoReorderableGrid> createState() => _DemoReorderableGridState();
}

class _DemoReorderableGridState extends State<DemoReorderableGrid> {
  final data = List<int>.generate(0, (index) => index);
  double scrollSpeedVariable = 5;

  void add() {
    setState(() {
      data.add(data.length);
    });
  }


  Widget _buildGrid(BuildContext context) {
    return ReorderableGridView.count(
      crossAxisSpacing: 20,
      mainAxisSpacing: 30,
      crossAxisCount: 4,
      scrollSpeedController:
          (int timeInMilliSecond, double overSize, double itemSize) {
        if (timeInMilliSecond > 1500) {
          scrollSpeedVariable = 15;
        } else {
          scrollSpeedVariable = 5;
        }
        return scrollSpeedVariable;
      },
      // option
      onDragStart: (dragIndex) {
      },
      onReorder: (oldIndex, newIndex) {
        setState(() {
          final element = data.removeAt(oldIndex);
          data.insert(newIndex, element);
        });
      },
      header: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(150),
          ),
          child: InkWell(
            onTap: () {
              print("add called");
              add();
            },
            child: const Center(child: Icon(Icons.add)),
          ),
        ),
      ],
      footer: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(150),
            //set border radius more than 50% of height and width to make circle
          ),
          child: InkWell(
            onTap: () {
              if (data.isNotEmpty) {
                setState(() {
                  data.removeLast();
                });
              }
            },
            child: const Center(child: Icon(Icons.delete)),
          ),
        ),
      ],
      // 0 < childAspectRatio <= 1.0
      children: data.map((e) => buildItem(e)).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 35, 20, 0),
        child: _buildGrid(context));
  }

  Widget buildItem(int index) {
    return Stack(
        key: ValueKey(index),
        children: [
          Container(
            // key: (widget.type == 'Iced' ? ValueKey('Iced_$index') : ValueKey('Cold_$index')),
            width: 200, // Set the width as needed
            height: 200, // Set the height as needed
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(150),
              ),
            ),
          ),
      Positioned(
        // key: ValueKey('Title_$index'),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: (widget.type == 'Iced' ? "냉동" : "냉장").text.size(13).make(),
        ),
      ),
    ]);
  }
}
