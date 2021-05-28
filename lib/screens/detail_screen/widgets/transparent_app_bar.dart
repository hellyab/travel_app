import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget {
  final VoidCallback onBackPressed;
  final VoidCallback? onUploadPressed;
  const TransparentAppBar({
    Key? key,
    required this.onBackPressed,
    this.onUploadPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: onBackPressed,
        ),
        IconButton(
          icon: Icon(
            Icons.file_upload_outlined,
            color: Colors.white,
            size: 30,
          ),
          onPressed: onUploadPressed,
        )
      ],
    );
  }
}
