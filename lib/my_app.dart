import 'package:al3yadah_app/view/splash/view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/app_colors.dart';
import 'core/route_utils/route_utils.dart';
import 'widgets/pop_scaffold.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      //هناااااا
      child: const SplashView(),
      builder: (_, child) => KeyboardPopScaffold(
        child: MaterialApp(
          title: 'Al3yadah',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            hoverColor: Colors.transparent,
            useMaterial3: false,
            fontFamily: "Lato",
            scaffoldBackgroundColor: AppColors.background,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            focusColor: Colors.transparent,
            primaryColor: AppColors.primary,
          ),
          onGenerateRoute: onGenerateRoute,
          navigatorKey: navigatorKey,
          home: child,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: [const Locale('en'), const Locale('ar')],
          locale: context.locale,
        ),
      ),
    );
  }
}
