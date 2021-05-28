import 'package:flutter/material.dart';

class BookmarkButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double height;
  const BookmarkButton({
    Key? key,
    required this.onPressed,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height,
      height: height,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Center(
        child: Icon(
          Icons.bookmark,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
