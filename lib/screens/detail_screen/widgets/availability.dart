import 'package:flutter/material.dart';

class Avalability extends StatelessWidget {
  const Avalability({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Available:",
          style: Theme.of(context).textTheme.caption?.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "10:00 - 18:00",
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "•",
          style: Theme.of(context).textTheme.caption?.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "Mon — Sat",
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
