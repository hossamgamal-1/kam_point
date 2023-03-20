import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../presentation/resources/string_manager.dart';
import '../presentation/resources/themes_manager.dart';
import 'app_router.dart';

class MyApp extends StatelessWidget {
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
        title: StringManager.appTitle,
        theme: getLightTheme(),
        onGenerateRoute: AppRouter.getRoute,
      ),
    );
  }
}
