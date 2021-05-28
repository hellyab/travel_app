import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_screen/widgets/widgets.dart';

class TitleBar extends StatelessWidget {
  final String title;
  final VoidCallback onActionIconPressed;
  const TitleBar({
    Key? key,
    required this.title,
    required this.onActionIconPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
          ),
          PreferencesActionIcon(
            onActionIconPressed: onActionIconPressed,
          ),
        ],
      ),
    );
  }
}
