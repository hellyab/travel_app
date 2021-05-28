import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating;
  final int? ratersCount;
  final bool showRatersCount;
  final bool isLarge;

  RatingBar({
    Key? key,
    required this.isLarge,
    this.ratersCount,
    required this.rating,
    this.showRatersCount = false,
  }) : super(key: key) {
    assert(ratersCount != null || !showRatersCount);
  }
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
          color: Colors.amber[300],
          size: isLarge ? 25 : 20,
        ),
        Icon(
          rating >= 2
              ? Icons.star
              : rating >= 1.5
                  ? Icons.star_half_outlined
                  : Icons.star_outline,
          color: Colors.amber[300],
          size: isLarge ? 25 : 20,
        ),
        Icon(
          rating >= 3
              ? Icons.star
              : rating >= 2.5
                  ? Icons.star_half_outlined
                  : Icons.star_outline,
          color: Colors.amber[300],
          size: isLarge ? 25 : 20,
        ),
        Icon(
          rating >= 4
              ? Icons.star
              : rating >= 3.5
                  ? Icons.star_half_outlined
                  : Icons.star_outline,
          color: Colors.amber[300],
          size: isLarge ? 25 : 20,
        ),
        Icon(
          rating >= 5
              ? Icons.star
              : rating >= 4.5
                  ? Icons.star_half_outlined
                  : Icons.star_outline,
          color: Colors.amber[300],
          size: isLarge ? 25 : 20,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          rating.toString(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: isLarge ? 22 : 17,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        if (showRatersCount)
          Text(
            "(${ratersCount.toString()})",
            style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.w500,
              fontSize: isLarge ? 21 : 16,
            ),
          ),
      ],
    );
  }
}
