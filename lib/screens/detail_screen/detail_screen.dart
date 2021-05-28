import 'package:flutter/material.dart';

import 'package:travel_app/models/models.dart';
import 'package:travel_app/screens/detail_screen/widgets/widgets.dart';
import 'package:travel_app/shared_widgets/shared_widgets.dart';

class DetailScreen extends StatefulWidget {
  final Sight sight;
  const DetailScreen({
    Key? key,
    required this.sight,
  }) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double sliderValue = 2;
  void navigateBack(BuildContext context) {
    Navigator.of(context).maybePop();
  }

  void onSliderChanged(double value) {
    setState(() {
      sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/lighthouse.jpg",
            ),
            fit: BoxFit.fitHeight,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 50,
            ),
            TransparentAppBar(
              onBackPressed: () => navigateBack(context),
            ),
            Spacer(
              flex: 1,
            ),
            RatingBar(
              isLarge: true,
              ratersCount: 432,
              rating: 5,
              showRatersCount: true,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lighthouse excursion",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.white,
                    fontSize: 37,
                  ),
            ),
            SizedBox(
              height: 325,
            )
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: BottomDetailSheet(
        sliderValue: sliderValue,
        onSliderChanged: onSliderChanged,
      ),
    );
  }
}
