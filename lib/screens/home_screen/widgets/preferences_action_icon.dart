import 'package:flutter/material.dart';

class PreferencesActionIcon extends StatelessWidget {
  const PreferencesActionIcon({
    Key? key,
    required this.onActionIconPressed,
  }) : super(key: key);

  final VoidCallback onActionIconPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: onActionIconPressed,
      child: Container(
        width: 45,
        height: 45,
        child: Ink(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300]!,
                  offset: Offset(1, 2),
                  blurRadius: 10.0)
            ],
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          height: 45,
          width: 45,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage("assets/images/icon.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
