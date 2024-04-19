import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/models/followup.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/patient_files/widget/follow_up_items.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FollowupCard extends StatelessWidget {
  final FollowUp followUp;
  final int index;

  const FollowupCard({
    super.key,
    required this.followUp,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => RouteUtils.navigateTo(FollowUpDetails(
        followUp: followUp,
      )),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                title: "Follow up ${index + 1}",
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              AppText(
                title: DateFormat('dd MMM').format(followUp.date!),
                color: AppColors.txtFieldlable1,
                fontSize: 14,
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
