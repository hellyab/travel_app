import 'package:flutter/material.dart';

class PopularSightItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String startDate;
  final String endDate;
  const PopularSightItem({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.startDate,
    required this.endDate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Container(
        height: 100,
        width: screenWidth - 30,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200]!,
              offset: Offset(1, 2),
              blurRadius: 8.0,
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.only(
                left: 15,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$startDate - $endDate',
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          fontSize: 13,
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
