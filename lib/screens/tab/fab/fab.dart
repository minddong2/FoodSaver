import 'package:flutter/material.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';
import 'package:popup_card/popup_card.dart';
import 'package:refri_project/screens/tab/fab/fab_popup_body.dart';

class FabMenu extends StatelessWidget {
  FabMenu({Key? key}) : super(key: key);

  HawkFabMenuController hawkFabMenuController = HawkFabMenuController();

  @override
  Widget build(BuildContext context) {
    return HawkFabMenu(
      icon: AnimatedIcons.menu_arrow,
      fabColor: const Color.fromARGB(255, 48, 62, 78),
      iconColor: Colors.white,
      hawkFabMenuController: hawkFabMenuController,
      items: [
        HawkFabMenuItem(
          label: '직접입력',
          ontap: () {
            showDialog(
              context: context,
              builder: (context) {
                return PopUpItem(
                  padding: EdgeInsets.all(8),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  elevation: 2,
                  tag: 'test',
                  child: PopUpItemBody(),
                );
              },
            );
          },
          icon: const Icon(Icons.home),
          color: Colors.red,
          labelColor: Colors.blue,
        ),
        HawkFabMenuItem(
          label: '영수증 스캔',
          ontap: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Menu 2 selected')),
            );
          },
          icon: const Icon(Icons.comment),
          labelColor: Colors.white,
          labelBackgroundColor: Colors.blue,
        ),
        HawkFabMenuItem(
          label: '바코드 스캔',
          ontap: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Menu 3 selected')),
            );
          },
          icon: const Icon(Icons.add_a_photo),
        ),
      ],
      body: Container(),
    );
  }
}