import 'package:flutter/material.dart';
import 'package:travel_app/models/models.dart';
import 'package:travel_app/screens/home_screen/widgets/widgets.dart';

class SightsList extends StatelessWidget {
  final List<Sight> sights;
  const SightsList({
    Key? key,
    required this.sights,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sights.length,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return SightItem(
          imagePath: sights[index].imagePath,
          rating: sights[index].rating,
          sightName: sights[index].name,
        );
      },
    );
  }
}
