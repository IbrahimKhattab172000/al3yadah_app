import 'package:al3yadah_app/view/home/view.dart';
import 'package:al3yadah_app/view/nav_bar/view.dart';
import 'package:al3yadah_app/view/onboarding/view.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/utils.dart';
import '../../../../core/route_utils/route_utils.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      checkForStoreUpdate();
    });
    super.initState();
  }

  void checkForStoreUpdate() async {
    RouteUtils.navigateAndPopAll(
      OnBoardingView(),
    );
    return;
    // final neoVersion = NeoVersion(
    //   androidAppId: '',
    //   iOSAppId: '',
    // );
    // final status = await neoVersion.getVersionStatus();
    // if (!status.needsUpdate) {
    //   // FirebaseMessagingHelper.init();
    //   // RouteUtils.navigateAndPopAll(SelectLanguageView());
    //   return;
    // }
    // await neoVersion.showUpdateDialog(
    //   context: context,
    //   status: status,
    //   dismissable: false,
    //   updateButtonText: "update".tr(),
    //   dismissButtonText: "cancel".tr(),
    //   onDismissed: () => exit(0),
    //   title: "new_update".tr(),
    //   dialogText: (_, appStoreVersion, __) {
    //     return "new_version_available".tr() +
    //         " $appStoreVersion " +
    //         "for_app".tr();
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Image.asset(
            Utils.getAssetPNGPath('splash'),
          ),
        ),
      ),
    );
  }
}
