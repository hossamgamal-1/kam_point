import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/resources/asset_path_manager.dart';
import '../../core/resources/color_manager.dart';
import '../../core/resources/fonts_manager.dart';
import '../../core/resources/string_manager.dart';
import '../widgets/custom_game_win_button.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(
              height: 75.h,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetsPathManager.gamePageImagePath),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              height: 71.5.h,
              margin: EdgeInsets.only(top: 3.5.h),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetsPathManager.gamePageDividerPath),
                ),
              ),
            ),
            Column(
              children: [
                // SizedBox(height: 0.5.h),
                getRow(StringManager.teamOneName, StringManager.teamTwoName),
              ],
            ),
            Container(
              height: 100.h,
              margin: EdgeInsets.only(top: (80.h) - kToolbarHeight),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomGameWinButton(
                    onPressed: () {},
                    imagePath: AssetsPathManager.navCamIconPath,
                    text: Text(
                      StringManager.theyWin,
                      style: getRegularTextStyle(
                          color: ColorManager.primaryColor,
                          fontSize: FontSize.s4_8.sp),
                    ),
                  ),
                  CustomGameWinButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(ColorManager.primaryColor),
                    ),
                    imagePath: AssetsPathManager.whiteCamIconPath,
                    text: Text(
                      StringManager.weWin,
                      style: getRegularTextStyle(
                          color: ColorManager.white,
                          fontSize: FontSize.s4_8.sp),
                    ),
                    onPressed: () {},
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

Widget getRow(String text1, String text2) {
  TextStyle style = getRegularTextStyle(
      color: ColorManager.primaryColor, fontSize: FontSize.s4_8.sp);
  return Container(
    margin: EdgeInsets.only(top: 1.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text2, style: style),
        Text(text1, style: style),
      ],
    ),
  );
}
