// ignore_for_file: prefer_const_constructors

import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class PatientDetailsView extends StatelessWidget {
  final Patient patient;
  final int index;

  const PatientDetailsView({
    Key? key,
    required this.patient,
    required this.index,
  }) : super(key: key);

  Widget _buildCard(String title, String subtitle) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: AppColors.primary),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: AppColors.txtFieldlable2),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: patient.name,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // _buildCard("Name", patient.name),
            // _buildCard("Age", "${patient.age}"),
            // _buildCard("Occupation", patient.occupation),
            // _buildCard("Medical Reference", patient.medicalRef),
            // _buildCard("Weight", "${patient.weight}"),
            // _buildCard("Chief Complaint", patient.chiefComplaint),
            // _buildCard("Course", patient.course),
            // SizedBox(height: 20),
            // Row(
            //   children: [
            //     AppText(
            //       title: "Presented Area:",
            //       color: AppColors.txtFieldlable2,
            //       fontWeight: FontWeight.w700,
            //     ),
            //     SizedBox(width: 20.width),
            //     Container(
            //       decoration: BoxDecoration(
            //         color: AppColors.primary,
            //         borderRadius: BorderRadius.circular(20),
            //       ),
            //       padding: EdgeInsets.all(10),
            //       child: AppText(
            //         title: patient.presentedArea,
            //         color: AppColors.white,
            //         fontWeight: FontWeight.w700,
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 20),
            // _buildCard("Cervical Free",
            //     "${patient.sessions[index].shoulder.cervicalFree}"),
            // _buildCard("History", patient.sessions[index].shoulder.history),
            // _buildCard("Suspect Diagnosis",
            //     patient.sessions[index].shoulder.suspectDiagnose),
            // _buildCard("Place", patient.sessions[index].shoulder.place),
            // _buildCard("VAS", patient.sessions[index].shoulder.vas),
            // _buildCard("Palpation", patient.sessions[index].shoulder.palpation),
            // _buildCard(
            //     "Flexion Note", patient.sessions[index].shoulder.flexionNote),
            // _buildCard("Flexion Number",
            //     "${patient.sessions[index].shoulder.flexionNum}"),
            // _buildCard("Extension Note",
            //     patient.sessions[index].shoulder.extensionNote),
            // _buildCard("Extension Number",
            //     "${patient.sessions[index].shoulder.extensionNum}"),
            // _buildCard("Abd Note", patient.sessions[index].shoulder.abdNote),
            // _buildCard(
            //     "Abd Number", "${patient.sessions[index].shoulder.abdNum}"),
            // _buildCard("ER Note", patient.sessions[index].shoulder.erNote),
            // _buildCard(
            //     "ER Number", "${patient.sessions[index].shoulder.erNum}"),
            // _buildCard("IR Note", patient.sessions[index].shoulder.irNote),
            // _buildCard(
            //     "IR Number", "${patient.sessions[index].shoulder.irNum}"),
            // _buildCard(
            //     "Hawkins Test", patient.sessions[index].shoulder.hawkinsTest),
            // _buildCard("Neer Test", patient.sessions[index].shoulder.neerTest),
            // _buildCard("Posterior", patient.sessions[index].shoulder.posterior),
            // _buildCard("Impingement Note",
            //     patient.sessions[index].shoulder.impingementNote),
            // _buildCard(
            //     "Apprehension", patient.sessions[index].shoulder.apprehension),
            // _buildCard(
            //     "Relocation", patient.sessions[index].shoulder.relocation),
            // _buildCard("Instability Note",
            //     patient.sessions[index].shoulder.instabilityNote),
            // _buildCard("Belly Off", patient.sessions[index].shoulder.bellyOff),
            // _buildCard("IRLS", patient.sessions[index].shoulder.irls),
            // _buildCard("ERLS", patient.sessions[index].shoulder.erls),
            // _buildCard(
            //     "RC Tear Note", patient.sessions[index].shoulder.rcTearNote),
            // _buildCard("Scapular Assistance Test",
            //     patient.sessions[index].shoulder.scapularAssistanceTest),
            // _buildCard("Scapular Retraction Test",
            //     patient.sessions[index].shoulder.scapularRetractionTest),
            // _buildCard(
            //     "Acromio Test", patient.sessions[index].shoulder.acromioTest),
            // _buildCard(
            //     "Obrien Test", patient.sessions[index].shoulder.obrienTest),
            // _buildCard(
            //     "Passive Test", patient.sessions[index].shoulder.passiveTest),
            // _buildCard(
            //     "Modified Test", patient.sessions[index].shoulder.modifiedTest),
            // SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
