import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_dialog.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/utils.dart';

class RateDialog extends StatefulWidget {
  const RateDialog({Key? key}) : super(key: key);

  static Future<void> show() async {
    return AppDialog.show(
      title: 'rate_your_order'.tr(),
      child: RateDialog(),
    );
  }

  @override
  State<RateDialog> createState() => _RateDialogState();
}

class _RateDialogState extends State<RateDialog> {
  int rate = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          SizedBox(height: 24),
          Row(
            children: [
              _rateItem(
                title: 'unsatisfactory',
                rate: 1,
              ),
              _rateItem(
                title: 'without_rating',
                rate: 2,
              ),
              _rateItem(
                title: 'some_extent',
                rate: 3,
              ),
              _rateItem(
                title: 'satisfactory',
                rate: 4,
              ),
              _rateItem(
                title: 'very_satisfactory',
                rate: 5,
              ),
            ],
          ),
          SizedBox(height: 24),
          UnconstrainedBox(
            child: AppButton(
              title: 'rate'.tr(),
              height: 48,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _rateItem({
    required String title,
    required int rate,
  }) {
    bool isSelected = this.rate == rate;
    return Expanded(
      child: InkWell(
        onTap: () {
          this.rate = rate;
          setState(() {});
        },
        child: Column(
          children: [
            Image.asset(
              Utils.getAssetPNGPath(title),
              width: 40,
              height: 40,
            ),
            SizedBox(height: 12),
            FittedBox(
              child: AppText(
                title: title.tr(),
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
                color: isSelected ? AppColors.secondary : AppColors.lightGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
