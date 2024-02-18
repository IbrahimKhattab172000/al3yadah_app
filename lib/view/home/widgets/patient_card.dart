import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/patient_files/view.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PatientCard extends StatelessWidget {
  final Patient patient;

  const PatientCard({
    super.key,
    required this.patient,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => RouteUtils.navigateTo(PatientFilesView(patient: patient)),
      child: Card(
        elevation: 5,
        child: Container(
          // width: 344.width,
          // height: 100.height,
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.primary,
              width: 3,
            ),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.purple,
                radius: 30,
                child: AppText(
                  title: patient.name.isNotEmpty
                      ? patient.name.substring(0, 1)
                      : '',
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
                  SizedBox(height: 10.height),
                  Row(
                    children: [
                      AppText(
                        title: "Presented area:",
                        color: AppColors.txtFieldlable2,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(width: 10.width),
                      AppText(
                        title: patient.presentedArea,
                        color: AppColors.txtFieldlable1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.height),
                  Row(
                    children: [
                      AppText(
                        title: "Last session:",
                        color: AppColors.txtFieldlable2,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                      SizedBox(width: 10.width),
                      AppText(
                        title: DateFormat('dd MMM')
                            .format(patient.sessions.last.date),
                        color: AppColors.txtFieldlable1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
