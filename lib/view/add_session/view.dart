import 'package:al3yadah_app/core/handlers/new_patient_alt/handler.dart';
import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/models/patient_general.dart';

import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_dialog.dart';
import 'package:al3yadah_app/widgets/app_drop_down_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddSessionView extends StatelessWidget {
  final PatientMainHandler newPatientAltHandler;
  final Patient currentPatient;
  const AddSessionView(
      {super.key,
      required this.newPatientAltHandler,
      required this.currentPatient});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PatientMainHandler, PatientMainState>(
      builder: (context, state) {
        final currentPatientGeneral = PatientGeneral(
          name: currentPatient.name,
          age: currentPatient.age,
          occupation: currentPatient.occupation,
          medicalRef: currentPatient.medicalRef,
          weight: currentPatient.weight,
          chiefComplaint: currentPatient.chiefComplaint,
          course: currentPatient.course,
          presentedArea: currentPatient.presentedArea,
        );

        return AppButton(
          title: "Add session",
          onTap: () => AppDialog.show(
            title: "Add session",
            dismissible: true,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  AppDropDownMenu(
                    label: "Presented Area",
                    hint: 'select',
                    items: newPatientAltHandler.areas,
                    onChange: (value) {
                      currentPatientGeneral.presentedArea = value;
                    },
                    fillColor: AppColors.primary.withOpacity(0.1),
                  ),
                  SizedBox(height: 50.height),
                  AppButton(
                    title: "Next",
                    color: AppColors.primary,
                    onTap: () {
                      context.read<PatientMainHandler>().initial(
                            addingSession: true,
                            patientGeneral: currentPatientGeneral,
                            presentedArea: currentPatientGeneral.presentedArea,
                          );
                    },
                  ),
                ],
              ),
            ),
          ),
          titleColor: AppColors.white,
        );
      },
    );
  }
}
