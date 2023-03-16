import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/resources/string_manager.dart';
import '../../core/resources/color_manager.dart';
import '../../core/resources/fonts_manager.dart';
import '../../core/resources/values_manager.dart';
import '../widgets/custom_dialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Image.asset(
            StringManager.backgroundImagePath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60.w,
                  height: 6.5.h,
                  margin: const EdgeInsets.all(AppMargin.m8),
                  padding: const EdgeInsets.all(AppPadding.p2),
                  child: ElevatedButton(
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
                          color: ColorManager.white, fontSize: FontSize.s22),
                    ),
                  ),
                ),
                Container(
                  width: 60.w,
                  height: 6.5.h,
                  margin: const EdgeInsets.all(AppMargin.m8),
                  padding: const EdgeInsets.all(AppPadding.p2),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      StringManager.currentRound,
                      style: getSemiBoldTextStyle(
                        color: ColorManager.primaryColor,
                        fontSize: FontSize.s22,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 60.w,
                  height: 6.5.h,
                  margin: const EdgeInsets.all(AppMargin.m8),
                  padding: const EdgeInsets.all(AppPadding.p2),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      StringManager.oldRounds,
                      style: getSemiBoldTextStyle(
                        color: ColorManager.primaryColor,
                        fontSize: FontSize.s22,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
