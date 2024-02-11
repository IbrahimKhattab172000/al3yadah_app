import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/home/view.dart';
import 'package:al3yadah_app/view/nav_bar/view.dart';
import 'package:al3yadah_app/view/new_patient/view.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Utils.getAssetPNGPath("success"),
                    height: 147.height,
                    width: 147.width,
                  ),
                  SizedBox(height: 12.height),
                  AppText(
                    title: "Your test has been successfuly submitted!",
                    color: AppColors.txtFieldlable1,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            AppButton(
              title: "Back Home",
              onTap: () => RouteUtils.navigateAndPopAll(NavBarView()),
            ),
            SizedBox(height: Utils.bottomDevicePadding),
          ],
        ),
      ),
    );
  }
}
