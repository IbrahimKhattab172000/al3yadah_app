// ignore_for_file: prefer_const_constructors

import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class PatientDetailsView extends StatelessWidget {
  final Patient patient;

  const PatientDetailsView({Key? key, required this.patient}) : super(key: key);

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
            _buildCard("Name", patient.name),
            _buildCard("Age", "${patient.age}"),
            _buildCard("Occupation", patient.occupation),
            _buildCard("Medical Reference", patient.medicalRef),
            _buildCard("Weight", "${patient.weight}"),
            _buildCard("Chief Complaint", patient.chiefComplaint),
            _buildCard("Course", patient.course),
            SizedBox(height: 20),
            Row(
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
                  padding: EdgeInsets.all(10),
                  child: AppText(
                    title: patient.presentedArea,
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // _buildCard("Cervical Free", "${patient.shoulder.cervicalFree}"),
            // _buildCard("History", patient.shoulder.history),
            // _buildCard("Suspect Diagnosis", patient.shoulder.suspectDiagnose),
            // _buildCard("Place", patient.shoulder.place),
            // _buildCard("VAS", patient.shoulder.vas),
            // _buildCard("Palpation", patient.shoulder.palpation),
            // _buildCard("Flexion Note", patient.shoulder.flexionNote),
            // _buildCard("Flexion Number", "${patient.shoulder.flexionNum}"),
            // _buildCard("Extension Note", patient.shoulder.extensionNote),
            // _buildCard("Extension Number", "${patient.shoulder.extensionNum}"),
            // _buildCard("Abd Note", patient.shoulder.abdNote),
            // _buildCard("Abd Number", "${patient.shoulder.abdNum}"),
            // _buildCard("ER Note", patient.shoulder.erNote),
            // _buildCard("ER Number", "${patient.shoulder.erNum}"),
            // _buildCard("IR Note", patient.shoulder.irNote),
            // _buildCard("IR Number", "${patient.shoulder.irNum}"),
            // _buildCard("Hawkins Test", patient.shoulder.hawkinsTest),
            // _buildCard("Neer Test", patient.shoulder.neerTest),
            // _buildCard("Posterior", patient.shoulder.posterior),
            // _buildCard("Impingement Note", patient.shoulder.impingementNote),
            // _buildCard("Apprehension", patient.shoulder.apprehension),
            // _buildCard("Relocation", patient.shoulder.relocation),
            // _buildCard("Instability Note", patient.shoulder.instabilityNote),
            // _buildCard("Belly Off", patient.shoulder.bellyOff),
            // _buildCard("IRLS", patient.shoulder.irls),
            // _buildCard("ERLS", patient.shoulder.erls),
            // _buildCard("RC Tear Note", patient.shoulder.rcTearNote),
            // _buildCard("Scapular Assistance Test",
            //     patient.shoulder.scapularAssistanceTest),
            // _buildCard("Scapular Retraction Test",
            //     patient.shoulder.scapularRetractionTest),
            // _buildCard("Acromio Test", patient.shoulder.acromioTest),
            // _buildCard("Obrien Test", patient.shoulder.obrienTest),
            // _buildCard("Passive Test", patient.shoulder.passiveTest),
            // _buildCard("Modified Test", patient.shoulder.modifiedTest),
            // SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
