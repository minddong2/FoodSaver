import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:refri_project/screens/home/list/f_my_food_list.dart';
import 'package:refri_project/screens/home/icon/home_selected_icon.dart';
import 'package:refri_project/screens/setting/setting_screen.dart';
import 'package:refri_project/screens/tab/fab/fab.dart';


class HomeListScreen extends StatefulWidget {
  @override
  _HomeListScreenState createState() => _HomeListScreenState();
}

class _HomeListScreenState extends State<HomeListScreen> {
  int _selectedBottomNavigationIndex = 0;

  final List<_BottomNavigationItem> _bottomNavigationItems = [
    _BottomNavigationItem(
      label: '홈',
      iconData: Icons.home_rounded,
      widgetBuilder: (context) => HomeSelectedIcon(),
    ),
    _BottomNavigationItem(
      label: '리스트',
      iconData: Icons.search,
      widgetBuilder: (context) => const MyFoodListFragment(),
    ),
    _BottomNavigationItem(
      label: '설정',
      iconData: Icons.more_horiz,
      widgetBuilder: (context) => SettingScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.blue,
    appBar: AppBar(
      title: Text('Food Save',
          style: GoogleFonts.exo2(
              color: Colors.white, fontSize: 28) //textTheme.titleLarge,
      ),
      centerTitle: true,
      backgroundColor: const Color.fromRGBO(48, 62, 78, 1),
      actions: [
        IconButton(
          icon: const Icon(
            CupertinoIcons.person_crop_circle,
            size: 38,
          ),
          onPressed: () {
            print('tab profile');
          },
        ),
      ],
    ),
    resizeToAvoidBottomInset: false,
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _selectedBottomNavigationIndex,
      type: BottomNavigationBarType.fixed,
      items: _bottomNavigationItems
          .map(
            (item) => BottomNavigationBarItem(
          icon: Icon(item.iconData),
          label: item.label,
        ),
      )
          .toList(),
      onTap: (newIndex) => setState(
            () => _selectedBottomNavigationIndex = newIndex,
      ),
    ),
    body: IndexedStack(
      index: _selectedBottomNavigationIndex,
      children: _bottomNavigationItems
          .map(
            (item) => item.widgetBuilder(context),
      )
          .toList(),
    ),
    floatingActionButton: FabMenu(),
  );
}

class _BottomNavigationItem {
  const _BottomNavigationItem({
    required this.label,
    required this.iconData,
    required this.widgetBuilder,
  });

  final String label;
  final IconData iconData;
  final WidgetBuilder widgetBuilder;
}
