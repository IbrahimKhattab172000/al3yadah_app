import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/view/patient_files/widget/session_card.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:flutter/material.dart';

class PatientFilesView extends StatelessWidget {
  final Patient patient;

  const PatientFilesView({Key? key, required this.patient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: patient.name),
      body: Expanded(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          itemCount: patient.sessions.length,
          itemBuilder: (context, index) {
            return SessionCard(
              patient: patient,
              index: index,
            );
          },
        ),
      ),
    );
  }
}
