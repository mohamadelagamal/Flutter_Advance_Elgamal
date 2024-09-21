import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advance_elgamal/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';
import 'core/theming/colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter ;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true, // this use to allow the text to be scaled according to the system's font size
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: ColorsManager.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        // onGenerateRoute used to generate the routes dynamically and it's used when you have a large number of routes
        onGenerateRoute: AppRouter.generateRoute,

      ),
    );
  }
}
