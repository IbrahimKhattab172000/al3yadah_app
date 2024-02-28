import 'package:al3yadah_app/core/handlers/new_patient_alt/handler.dart';
import 'package:al3yadah_app/core/repository/patient_main.dart';
import 'package:al3yadah_app/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (kDebugMode) {
  //   HttpOverrides.global = MyHttpOverrides();
  // }
  // await Future.value([
  //   await NetworkUtils.init(),
  //   await EasyLocalization.ensureInitialized(),
  //   await CachingUtils.init(),
  //   await Firebase.initializeApp(),
  //   // await FirebaseMessagingUtils.instance.init(),
  // ]);
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<PatientMainHandler>(
          create: (context) => PatientMainHandler(
              patientMainRepository: PatientMainRepository()),
        ),
        // Add more providers if needed
      ],
      child: EasyLocalization(
        supportedLocales: [
          Locale('en'),
          Locale('ar'),
        ],
        path: 'assets/lang',
        saveLocale: true,
        startLocale: Locale('en'),
        child: MyApp(),
      ),
    ),
  );
}

///// TODO: Remove this code at production
// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpClient createHttpClient(SecurityContext? context) {
//     return super.createHttpClient(context)
//       ..badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//   }
// }
