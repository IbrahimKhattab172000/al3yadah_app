import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              Utils.getAssetPNGPath("future_work"),
              width: 300.width,
              height: 150.height,
            ),
          ),
          SizedBox(height: 24.height),
          AppText(
            title: "Future Work",
            color: const Color(0xff2D6165),
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ],
      ),
    );
  }
}
