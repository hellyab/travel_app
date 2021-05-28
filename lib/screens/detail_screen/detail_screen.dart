import 'package:flutter/material.dart';
import 'package:travel_app/models/models.dart';

class DetailScreen extends StatelessWidget {
  final Sight sight;
  const DetailScreen({
    Key? key,
    required this.sight,
  }) : super(key: key);
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.of(context).maybePop();
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_upload_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
