import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/patient_detials/view.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PatientCard extends StatelessWidget {
  final Patient patient;

  // final String name;
  // final String presentedArea;
  // final DateTime dateTime;
  const PatientCard({
    super.key,
    // required this.name,
    // required this.presentedArea,
    // required this.dateTime,
    required this.patient,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => RouteUtils.navigateTo(PatientDetailsView(patient: patient)),
      child: Container(
        // width: 344.width,
        // height: 100.height,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.primary,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.purple,
              radius: 30,
              child: AppText(
                title:
                    patient.name.isNotEmpty ? patient.name.substring(0, 1) : '',
                color: AppColors.background,
              ),
            ),
            SizedBox(width: 15.width),
            Container(
              height: 100,
              color: AppColors.txtFieldlable1,
              width: 1,
            ),
            SizedBox(width: 15.width),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: patient.name,
                  color: AppColors.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 5.height),
                Row(
                  children: [
                    AppText(
                      title: "presented area:",
                      color: AppColors.txtFieldlable2,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(width: 5.width),
                    AppText(
                      title: patient.presentedArea,
                      color: AppColors.txtFieldlable1,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                AppText(
                  title: DateFormat('dd MMM')
                      .format(patient.shoulder.dateTime.toLocal()),
                  color: AppColors.txtFieldlable1,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
