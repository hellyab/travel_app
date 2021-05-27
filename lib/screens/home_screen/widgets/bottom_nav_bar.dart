import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_screen/widgets/widgets.dart';

class BottomNavBar extends StatelessWidget {
  final Function(int) onIconPressed;
  final int selectedIndex;
  const BottomNavBar({
    Key? key,
    required this.onIconPressed,
    required this.selectedIndex,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomNavBarIcon(
            active: selectedIndex == 0,
            icon: Icons.home_outlined,
            index: 0,
            onPressed: onIconPressed,
          ),
          BottomNavBarIcon(
            active: selectedIndex == 1,
            icon: Icons.search,
            index: 1,
            onPressed: onIconPressed,
          ),
          BottomNavBarIcon(
            active: selectedIndex == 2,
            icon: Icons.bookmark_border,
            index: 2,
            onPressed: onIconPressed,
          ),
          BottomNavBarIcon(
            active: selectedIndex == 3,
            icon: Icons.settings_outlined,
            index: 3,
            onPressed: onIconPressed,
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60.0),
            topRight: Radius.circular(60.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200]!,
              offset: Offset(1, 2),
              blurRadius: 9,
            )
          ]),
      margin: EdgeInsets.only(top: 5.0),
    );
  }
}
