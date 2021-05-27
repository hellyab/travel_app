import 'package:flutter/material.dart';

class BottomNavBarIcon extends StatelessWidget {
  final bool active;
  final IconData icon;
  final int index;
  final Function(int) onPressed;
  const BottomNavBarIcon({
    Key? key,
    required this.active,
    required this.icon,
    required this.index,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: active ? Colors.blueAccent : Colors.transparent,
        shape: BoxShape.circle,
      ),
      duration: Duration(microseconds: 0),
      child: IconButton(
        icon: Icon(
          icon,
          color: active ? Colors.white : Colors.black87,
          size: 30,
        ),
        onPressed: () => onPressed(index),
      ),
    );
  }
}
