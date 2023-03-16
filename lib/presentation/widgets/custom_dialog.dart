import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/resources/color_manager.dart';
import '../../core/resources/fonts_manager.dart';
import '../../core/resources/string_manager.dart';
import '../../core/resources/values_manager.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 27.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CountType(
                    countState: CountState.upToFive,
                    countString: StringManager.upToFive),
                CountType(
                    countState: CountState.upToTen,
                    countString: StringManager.upToTen),
                CountType(
                    countState: CountState.upToOne,
                    countString: StringManager.upToOne),
              ],
            ),
            Container(
              width: 50.w,
              height: 7.5.h,
              margin: const EdgeInsets.all(AppMargin.m8),
              padding: const EdgeInsets.all(AppPadding.p2),
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(ColorManager.primaryColor)),
                child: Text(
                  StringManager.start,
                  style: getRegularTextStyle(
                      color: ColorManager.white, fontSize: FontSize.s22),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

enum CountState { upToOne, upToFive, upToTen }

class CountType extends StatelessWidget {
  const CountType(
      {super.key, required this.countState, required this.countString});

  final CountState countState;
  final String countString;

  @override
  Widget build(BuildContext context) {
    bool isActive = true;
    //     countState == context.watch<HomePageBloc>().currentCountState;
    return Container(
      decoration: BoxDecoration(
        color: isActive ? ColorManager.primaryColor : ColorManager.white,
        borderRadius: BorderRadius.circular(AppSizes.s8),
      ),
      width: 22.w,
      height: 22.w,
      child: Center(
        child: Text(
          countString,
          style: getRegularTextStyle(
            color: isActive ? ColorManager.white : ColorManager.primaryColor,
            fontSize: FontSize.s24,
          ),
        ),
      ),
    );
  }
}
