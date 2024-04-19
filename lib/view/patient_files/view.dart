import 'package:al3yadah_app/core/handlers/new_patient_alt/handler.dart';
import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/core/models/followup.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/add_session/view.dart';
import 'package:al3yadah_app/view/follow_up_session/view.dart';
import 'package:al3yadah_app/view/patient_files/widget/follow_up_card.dart';
import 'package:al3yadah_app/view/patient_files/widget/follow_up_items.dart';
import 'package:al3yadah_app/view/patient_files/widget/session_card.dart';
import 'package:al3yadah_app/widgets/app/app_data_show_card.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientFilesView extends StatelessWidget {
  final Patient patient;

  const PatientFilesView({Key? key, required this.patient}) : super(key: key);

  Widget _buildCard(String title, dynamic value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: title,
              color: AppColors.primary,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 5),
            AppText(
              title: value.toString(),
              color: AppColors.txtFieldlable2,
              fontSize: 14,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PatientMainHandler, PatientMainState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppAppBar(title: patient.name),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ...[
                    AppDataShowCard(
                      title: "Name",
                      value: patient.name,
                    ),
                    AppDataShowCard(
                      title: "Age",
                      value: patient.age.toString(),
                    ),
                    AppDataShowCard(
                      title: "Occupation",
                      value: patient.occupation,
                    ),
                    AppDataShowCard(
                      title: "Medical Reference",
                      value: patient.medicalRef,
                    ),
                    AppDataShowCard(
                      title: "Weight",
                      value: patient.weight.toString(),
                    ),
                    AppDataShowCard(
                      title: "Chief Complaint",
                      value: patient.chiefComplaint,
                    ),
                    AppDataShowCard(
                      title: "Course",
                      value: patient.course,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          title: "Presented Area:",
                          color: AppColors.txtFieldlable2,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(width: 20.width),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: AppText(
                            title: patient.presentedArea,
                            color: AppColors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                  SizedBox(height: 24.height),
                  SessionCard(
                    patient: patient,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: patient.followups?.length ?? 0,
                    itemBuilder: (context, index) {
                      return FollowupCard(
                        followUp: patient.followups?[index] ?? FollowUp(),
                        index: index,
                      );
                    },
                  ),
                  SizedBox(height: 24.height),
                  AppButton(
                    title: "Follow Up Session",
                    onTap: () {
                      RouteUtils.navigateTo(FollowUpSession(
                        patientName: patient.name,
                      ));
                    },
                  ),
                  // AddSessionView(
                  //   newPatientAltHandler: context.read<PatientMainHandler>(),
                  //   currentPatient: patient,
                  // ),
                  SizedBox(height: Utils.bottomDevicePadding),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
