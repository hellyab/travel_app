import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating;

  const RatingBar({
    Key? key,
    required this.rating,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          rating >= 1
              ? Icons.star
              : rating >= 0.5
                  ? Icons.star_half_outlined
                  : Icons.star_outline,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          rating >= 2
              ? Icons.star
              : rating >= 1.5
                  ? Icons.star_half_outlined
                  : Icons.star_outline,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          rating >= 3
              ? Icons.star
              : rating >= 2.5
                  ? Icons.star_half_outlined
                  : Icons.star_outline,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          rating >= 4
              ? Icons.star
              : rating >= 3.5
                  ? Icons.star_half_outlined
                  : Icons.star_outline,
          color: Colors.amber,
          size: 20,
        ),
        Icon(
          rating >= 5
              ? Icons.star
              : rating >= 4.5
                  ? Icons.star_half_outlined
                  : Icons.star_outline,
          color: Colors.amber,
          size: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          rating.toString(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
