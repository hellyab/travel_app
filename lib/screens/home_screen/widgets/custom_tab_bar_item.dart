import 'package:flutter/material.dart';

class CustomTabBarItem extends StatelessWidget {
  final bool active;
  final int index;
  final Function(int) onTap;
  final String title;
  const CustomTabBarItem({
    Key? key,
    required this.active,
    required this.index,
    required this.onTap,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 150,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: active ? Colors.blue : Colors.grey[700],
                fontWeight: active ? FontWeight.w500 : FontWeight.w400,
                letterSpacing: 1.0,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: active ? Colors.blueAccent : Colors.transparent,
                  shape: BoxShape.circle),
            )
          ],
        ),
      ),
    );
  }
}
