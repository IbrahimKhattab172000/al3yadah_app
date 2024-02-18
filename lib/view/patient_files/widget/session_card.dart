import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/patient_detials/view.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    super.key,
    required this.patient,
    required this.index,
  });

  final Patient patient;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => RouteUtils.navigateTo(PatientDetailsView(patient: patient)),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                title: "Session ${index + 1}",
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              AppText(
                title:
                    DateFormat('dd MMM').format(patient.sessions[index].date),
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
