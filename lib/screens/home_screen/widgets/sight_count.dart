import 'package:flutter/material.dart';

class SightCount extends StatelessWidget {
  final int count;
  const SightCount({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      ///Added the ternary operator to make sure the
      ///plurality of the noun corresponds to the count
      '$count sight${count > 1 ? "s" : ""}',
      style: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.0,
        fontSize: 16,
      ),
    );
  }
}
