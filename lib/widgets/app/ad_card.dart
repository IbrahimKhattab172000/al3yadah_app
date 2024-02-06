import 'package:flutter/material.dart';

import '../../core/helpers/app_colors.dart';
import '../../core/helpers/utils.dart';

class AdCard extends StatelessWidget {
  const AdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        Utils.getAssetPNGPath("advertise_here"),
        fit: BoxFit.cover,
      ),
    );
  }
}
