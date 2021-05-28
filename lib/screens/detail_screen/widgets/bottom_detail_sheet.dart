import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/screens/excursion_popup/excursion_popup.dart';
import 'package:travel_app/screens/detail_screen/widgets/widgets.dart';
import 'package:travel_app/shared_widgets/shared_widgets.dart';

class BottomDetailSheet extends StatelessWidget {
  const BottomDetailSheet({
    Key? key,
    required this.onSliderChanged,
    required this.sliderValue,
  }) : super(key: key);

  final Function(double) onSliderChanged;
  final double sliderValue;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        BottomSheet(
          builder: (context) {
            return Container(
              height: 300,
              padding: EdgeInsets.only(
                left: 40,
                right: 40,
                top: 40,
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Newhaven Lighthouse in Edinburgh, United Kingdom",
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Avalability(),
                  SizedBox(
                    height: 10,
                  ),
                  DurationAndPrice(),
                  CustomSlider(
                    sliderValue: sliderValue,
                    onSliderChanged: onSliderChanged,
                  ),
                  PersonCount(
                    count: sliderValue.toInt(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total: \$60",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontSize: 23,
                            ),
                      ),
                      TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 5,
                                  sigmaY: 5,
                                ),
                                child: ExcursionPopup(),
                              );
                            },
                            backgroundColor: Colors.transparent,
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.blue,
                          ),
                          fixedSize: MaterialStateProperty.resolveWith(
                            (states) => Size(130, 65),
                          ),
                          shape: MaterialStateProperty.resolveWith(
                            (states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        child: Text(
                          "Book Now",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(50),
            ),
          ),
          onClosing: () {},
          backgroundColor: Colors.white,
        ),
        Positioned(
          right: 35,
          top: -20,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 6),
                  blurRadius: 10.0,
                  spreadRadius: 10.0,
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: BookmarkButton(
              onPressed: () {},
              height: 60,
            ),
          ),
        )
      ],
    );
  }
}
