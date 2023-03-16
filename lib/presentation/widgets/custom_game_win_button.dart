import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/resources/values_manager.dart';

class CustomGameWinButton extends StatelessWidget {
  const CustomGameWinButton(
      {super.key,
      required this.onPressed,
      this.style,
      required this.imagePath,
      required this.text});

  final Function() onPressed;
  final ButtonStyle? style;
  final String imagePath;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      height: 12.w,
      margin: const EdgeInsets.all(AppMargin.m8),
      child: ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: AppSizes.s25,
              height: AppSizes.s25,
              child: Image.asset(imagePath),
            ),
            const SizedBox(width: AppSizes.s8),
            text
          ],
        ),
      ),
    );
  }
}
