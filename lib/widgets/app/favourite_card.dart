import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/app_colors.dart';
import '../../core/helpers/utils.dart';
import '../app_text.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.fourth.withOpacity(0.6),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  Utils.getAssetPNGPath("mekka"),
                  width: 64.width,
                  height: 64.height,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 12.width),
                Expanded(
                  child: AppText(
                    title: "الحرم المكي الشريف",
                    color: AppColors.primary,
                    maxLines: 2,
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.favorite,
            color: AppColors.red,
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
