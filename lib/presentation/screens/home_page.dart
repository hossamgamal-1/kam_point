import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/resources/asset_path_manager.dart';
import '../../core/resources/string_manager.dart';
import '../../core/resources/color_manager.dart';
import '../../core/resources/fonts_manager.dart';
import '../widgets/custom_dialog.dart';
import '../widgets/custom_elevated_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AssetsPathManager.backgroundImagePath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomElevatedButton(
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) => const CustomDialog()),
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(ColorManager.primaryColor),
                  ),
                  child: Text(
                    StringManager.newRound,
                    style: getSemiBoldTextStyle(
                        color: ColorManager.white, fontSize: FontSize.s4_4.sp),
                  ),
                ),
                CustomElevatedButton(
                  onPressed: () {},
                  child: Text(
                    StringManager.currentRound,
                    style: getSemiBoldTextStyle(
                      color: ColorManager.primaryColor,
                      fontSize: FontSize.s4_4.sp,
                    ),
                  ),
                ),
                CustomElevatedButton(
                  onPressed: () {},
                  child: Text(
                    StringManager.oldRounds,
                    style: getSemiBoldTextStyle(
                      color: ColorManager.primaryColor,
                      fontSize: FontSize.s4_4.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
