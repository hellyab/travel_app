import 'package:flutter/material.dart';

import 'package:travel_app/screens/home_screen/widgets/widgets.dart';

class SightItem extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  final double rating;
  final String sightName;
  const SightItem({
    Key? key,
    required this.imagePath,
    required this.rating,
    required this.sightName,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0),
      child: Ink(
        height: 300,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          image: DecorationImage(
              image: AssetImage(
                imagePath,
              ),
              fit: BoxFit.cover),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(25.0),
          onTap: onTap,
          splashColor: Colors.blue.withAlpha(25),
          child: Stack(
            children: [
              Positioned(
                bottom: 0.0,
                child: Container(
                  height: 150,
                  width: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black54,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 15.0,
                  top: 15.0,
                  bottom: 25.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        BookmarkButton(
                          height: 40,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Spacer(),
                    RatingBar(
                      rating: rating,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      sightName,
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.white,
                            fontSize: 27,
                          ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookmarkButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double height;
  const BookmarkButton({
    Key? key,
    required this.onPressed,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height,
      height: height,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Center(
        child: Icon(
          Icons.bookmark,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
