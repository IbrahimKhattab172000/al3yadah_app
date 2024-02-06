import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/app_colors.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // RateDialog.show();
        // RouteUtils.navigateTo(OrderDetailsView());
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  _tile(
                    key: 'order_number'.tr() + ' : ',
                    value: '١٤',
                  ),
                  SizedBox(height: 12),
                  _tile(
                    key: 'place'.tr() + ' : ',
                    value: 'مسجد الحرم المكي',
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        title: '04:00 PM - 22/12/2023',
                      ),
                      Expanded(
                        child: AppText(
                          title: '300 ' + 'riyal'.tr(),
                          textAlign: TextAlign.end,
                          color: AppColors.secondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 20,
                ),
                child: AppText(
                  title: 'جاري التسليم',
                  fontSize: 12,
                  color: AppColors.white,
                ),
                decoration: BoxDecoration(
                  color: AppColors.greenSacro,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.lightGray,
          ),
        ),
      ),
    );
  }

  Widget _tile({
    required String key,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: AppText(
            title: key,
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        Flexible(
          child: AppText(
            title: value,
            color: AppColors.secondary,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
