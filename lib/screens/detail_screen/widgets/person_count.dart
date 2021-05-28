import 'package:flutter/material.dart';

class PersonCount extends StatelessWidget {
  final int count;
  const PersonCount({
    Key? key,
    required this.count,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      '$count person${count > 1 ? "s" : ""}',
      style: Theme.of(context).textTheme.caption,
    );
  }
}
