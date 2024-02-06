import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/app_colors.dart';
import '../app_text.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.height),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      constraints: BoxConstraints(minHeight: 56.height),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.primary,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          // Image.asset(
          //   Utils.getAssetPNGPath('notificationModel.imagePath'),
          //   width: 22.width,
          //   height: 24.height,
          // ),
          // SizedBox(width: 8.width),
          Expanded(
            child: AppText(
              title: 'تم تسليم طلبك بنجاح',
              color: AppColors.darkGray,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          SizedBox(width: 12.width),
          AppText(
            title: '4:00 PM',
            color: AppColors.gray,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
