import 'package:flutter/material.dart';
import 'package:travel_app/models/models.dart';
import 'package:travel_app/screens/detail_screen/widgets/widgets.dart';

class DetailScreen extends StatelessWidget {
  final Sight sight;
  const DetailScreen({
    Key? key,
    required this.sight,
  }) : super(key: key);

  void navigateBack(BuildContext context) {
    Navigator.of(context).maybePop();
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
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TransparentAppBar(
              onBackPressed: () => navigateBack(context),
            )
          ],
        ),
      ),
    );
  }
}
