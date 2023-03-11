import 'package:flutter/material.dart';
import 'package:kam_point/core/resources/values_manager.dart';

import 'color_manager.dart';

ThemeData getLightTheme() {
  return ThemeData(
    primaryColor: ColorManager.primaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(ColorManager.white),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.s8),
            side: const BorderSide(
                color: ColorManager.primaryColor, width: AppSizes.s2),
          ),
        ),
        foregroundColor:
            const MaterialStatePropertyAll(ColorManager.primaryColor),
      ),
    ),
  );
}
