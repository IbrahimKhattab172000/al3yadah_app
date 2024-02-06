import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/utils.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key});

  static double get height => 146;
  static double get width => 132;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // RouteUtils.navigateTo(ProductDetailsView());
      },
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                Utils.dummyProductImage,
                height: 68,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 4),
            AppText(
              title: '10 كراتين',
              color: AppColors.white,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 2),
            AppText(
              title: '20 عبوة 330X مل',
              color: AppColors.white,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              fontSize: 10,
            ),
            SizedBox(height: 4),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.green,
              ),
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.symmetric(vertical: 4),
              alignment: Alignment.center,
              child: FittedBox(
                child: AppText(
                  title: '100 ' + 'ريال',
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondary,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
