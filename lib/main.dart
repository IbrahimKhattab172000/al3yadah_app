import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/caching_utils/caching_utils.dart';
import 'core/network_utils/network_utils.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kDebugMode) {
    HttpOverrides.global = MyHttpOverrides();
  }
  await Future.value([
    await NetworkUtils.init(),
    await EasyLocalization.ensureInitialized(),
    await CachingUtils.init(),
    // await Firebase.initializeApp(),
    // await FirebaseMessagingUtils.instance.init(),
  ]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/lang',
      saveLocale: true,
      startLocale: Locale('en'),
      child: MyApp(),
    ),
  );
}

// TODO: Remove this code at production
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
