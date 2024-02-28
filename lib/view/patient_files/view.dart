import 'package:al3yadah_app/core/handlers/new_patient_alt/handler.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/repository/patient_main.dart';
import 'package:al3yadah_app/view/add_session/view.dart';
import 'package:al3yadah_app/view/patient_files/widget/session_card.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientFilesView extends StatelessWidget {
  final Patient patient;

  const PatientFilesView({Key? key, required this.patient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PatientMainHandler, PatientMainState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppAppBar(title: patient.name),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: patient.sessions.length,
                    itemBuilder: (context, index) {
                      return SessionCard(
                        patient: patient,
                        index: index,
                      );
                    },
                  ),
                ),
                AddSessionView(
                  newPatientAltHandler: context.read<PatientMainHandler>(),
                  currentPatient: patient,
                ),
                SizedBox(height: Utils.bottomDevicePadding),
              ],
            ),
          ),
        );
      },
    );
  }
}
