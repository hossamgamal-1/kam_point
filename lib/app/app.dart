import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/resources/themes_manager.dart';
import 'app_router.dart';

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  const MyApp._internal();

  static MyApp? myApp;

  factory MyApp.getInstance() {
    myApp ??= const MyApp._internal();
    return myApp!;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(100, 100),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kam Point',
        theme: getLightTheme(),
        onGenerateRoute: AppRouter.getRoute,
      ),
    );
  }
}
