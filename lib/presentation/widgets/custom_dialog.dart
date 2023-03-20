import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kam_point/app/app_router.dart';

import '../../core/enums/enums.dart';
import '../resources/color_manager.dart';
import '../resources/fonts_manager.dart';
import '../resources/string_manager.dart';
import '../resources/values_manager.dart';
import '../business_logic/count_type_cubit/count_type_cubit.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountTypeCubit(),
      child: Dialog(
        child: Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(AppSizes.s12)),
          height: 27.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CountType(countState: CountState.upToFive),
                  CountType(countState: CountState.upToTen),
                  CountType(countState: CountState.upToOne),
                ],
              ),
              Container(
                width: 50.w,
                height: 7.5.h,
                margin: const EdgeInsets.all(AppMargin.m8),
                padding: const EdgeInsets.all(AppPadding.p2),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, RoutesNames.gameRoute);
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(ColorManager.primaryColor)),
                  child: Text(
                    StringManager.start,
                    style: getRegularTextStyle(
                        color: ColorManager.white, fontSize: FontSize.s4_4.sp),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CountType extends StatelessWidget {
  const CountType({super.key, required this.countState});

  final CountState countState;

  @override
  Widget build(BuildContext context) {
    bool isActive =
        countState == context.watch<CountTypeCubit>().currentCountState;
    final String countString = CountStringFactory.getCountString(countState);

    return InkWell(
      onTap: () {
        context.read<CountTypeCubit>().countTypeChange(countState);
      },
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? ColorManager.primaryColor : ColorManager.white,
          borderRadius: BorderRadius.circular(AppSizes.s8),
          border:
              Border.all(color: ColorManager.primaryColor, width: AppSizes.s2),
        ),
        width: 22.w,
        height: 22.w,
        child: Center(
          child: Text(
            countString,
            style: getRegularTextStyle(
              color: isActive ? ColorManager.white : ColorManager.primaryColor,
              fontSize: FontSize.s4_8.sp,
            ),
          ),
        ),
      ),
    );
  }
}

class CountStringFactory {
  static String getCountString(CountState countState) {
    switch (countState) {
      case CountState.upToTen:
        return StringManager.upToTen;
      case CountState.upToFive:
        return StringManager.upToFive;
      case CountState.upToOne:
        return StringManager.upToOne;

      default:
        return StringManager.upToTen;
    }
  }
}
