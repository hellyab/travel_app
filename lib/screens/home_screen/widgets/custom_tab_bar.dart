import 'package:flutter/material.dart';

import 'package:travel_app/screens/home_screen/widgets/widgets.dart';

class CustomTabBar extends StatelessWidget {
  final Function(int) onItemPressed;
  final int selectedIndex;
  const CustomTabBar({
    Key? key,
    required this.onItemPressed,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomTabBarItem(
            active: selectedIndex == 0,
            index: 0,
            title: 'Sights',
            onTap: onItemPressed,
          ),
          Spacer(
            flex: 1,
          ),
          CustomTabBarItem(
            title: 'Tours',
            active: selectedIndex == 1,
            index: 1,
            onTap: onItemPressed,
          ),
          Spacer(
            flex: 1,
          ),
          CustomTabBarItem(
            title: 'Adventures',
            active: selectedIndex == 2,
            index: 2,
            onTap: onItemPressed,
          ),
          Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}
