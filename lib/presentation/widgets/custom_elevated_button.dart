import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/values_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, this.onPressed, this.child, this.style});

  final Function()? onPressed;
  final Widget? child;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 6.5.h,
      margin: const EdgeInsets.all(AppMargin.m8),
      padding: const EdgeInsets.all(AppPadding.p2),
      child: ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: child,
      ),
    );
  }
}
