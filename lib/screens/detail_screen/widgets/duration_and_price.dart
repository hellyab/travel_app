import 'package:flutter/material.dart';

class DurationAndPrice extends StatelessWidget {
  const DurationAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Duration:",
          style: Theme.of(context).textTheme.caption?.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "4 hours",
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "Price:",
          style: Theme.of(context).textTheme.caption?.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "\$20",
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
