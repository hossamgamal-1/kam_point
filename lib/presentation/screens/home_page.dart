import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kam_point/core/resources/color_manager.dart';
import 'package:kam_point/core/resources/fonts_manager.dart';
import 'package:kam_point/core/resources/values_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.jpg',
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
                    onPressed: () {},
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(ColorManager.primaryColor),
                    ),
                    child: Text(
                      'فورة جديدة',
                      style: getSemiBoldTextStyle(
                          color: ColorManager.white, fontSize: FontSize.s22),
                    ),
                  ),
                ),
                Container(
                  width: 60.w,
                  height: 8.h,
                  margin: const EdgeInsets.all(AppMargin.m8),
                  padding: const EdgeInsets.all(AppPadding.p2),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'فورة شغالة',
                      style: getSemiBoldTextStyle(
                          color: ColorManager.primaryColor,
                          fontSize: FontSize.s22),
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
                      'الفورات القديمة',
                      style: getSemiBoldTextStyle(
                          color: ColorManager.primaryColor,
                          fontSize: FontSize.s22),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
