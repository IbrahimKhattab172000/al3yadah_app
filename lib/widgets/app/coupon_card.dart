import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            Utils.getAssetPNGPath("coupon_shape_1"),
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          right: 15,
          child: Row(
            children: [
              AppText(
                title: "discount_of".tr(),
                color: AppColors.darkGray,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              AppText(
                title: " ٢٥٪ ",
                color: AppColors.darkGray,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              AppText(
                title: "on_your_purchases".tr(),
                color: AppColors.darkGray,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
