import 'package:al3yadah_app/core/handlers/get_patients/handler.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/repository/new_patient.dart';
import 'package:al3yadah_app/view/home/widgets/patient_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientList extends StatelessWidget {
  PatientList({super.key});

  // List<Patient> patients = [
  //   Patient(
  //     name: 'Alice Johnson',
  //     age: 32,
  //     occupation: 'Teacher',
  //     medicalRef: '654321',
  //     weight: 65,
  //     chiefComplaint: 'Back Pain',
  //     course: 'Chiropractic Care',
  //     presentedArea: 'Shoulder',
  //     sessions: [
  //       Session(
  //         id: 0,
  //         date: DateTime.now(),
  //         shoulder: Shoulder(
  //           cervicalFree: true,
  //           history: 'Previous lower back injury',
  //           place: 'Clinic B',
  //           vas: 'Moderate',
  //           palpation: 'Tender at the lumbar region',
  //           flexionNote: 'Limited flexion',
  //           flexionNum: 90,
  //           extensionNote: 'Normal extension',
  //           extensionNum: 2,
  //           abdNote: 'Painful abduction',
  //           abdNum: 60,
  //           erNote: 'Normal external rotation',
  //           erNum: 45,
  //           irNote: 'Limited internal rotation',
  //           irNum: 30,
  //           hawkinsTest: '+ve',
  //           neerTest: '-v',
  //           posterior: 'notdone',
  //           impingementNote: 'Positive impingement sign',
  //           apprehension: '+ve',
  //           relocation: 'notdone',
  //           instabilityNote: 'No signs of instability',
  //           bellyOff: 'notdone',
  //           irls: '+ve',
  //           erls: 'notdone',
  //           rcTearNote: 'No signs of RC tear',
  //           scapularAssistanceTest: '+ve',
  //           scapularRetractionTest: 'notdone',
  //           acromioTest: '-v',
  //           obrienTest: '+ve',
  //           passiveTest: 'notdone',
  //           modifiedTest: '-v',
  //           suspectDiagnose: 'Muscular strain',
  //           obrienTestNote: 'this is a note',
  //           scapularStabilityNote: 'this is a note',
  //           treatmentNote: 'this is a note',
  //         ),
  //       ),
  //       Session(
  //         id: 1,
  //         date: DateTime.now().add(Duration(days: 1)),
  //         shoulder: Shoulder(
  //           cervicalFree: true,
  //           history: 'Previous knee injury while playing sports',
  //           place: 'Clinic C',
  //           vas: 'Severe',
  //           palpation: 'Tender at the patellar region',
  //           flexionNote: 'Limited flexion',
  //           flexionNum: 90,
  //           extensionNote: 'Normal extension',
  //           extensionNum: 2,
  //           abdNote: 'Painful abduction',
  //           abdNum: 60,
  //           erNote: 'Normal external rotation',
  //           erNum: 45,
  //           irNote: 'Limited internal rotation',
  //           irNum: 30,
  //           hawkinsTest: '+ve',
  //           neerTest: '-v',
  //           posterior: 'notdone',
  //           impingementNote: 'Negative impingement sign',
  //           apprehension: 'notdone',
  //           relocation: 'notdone',
  //           instabilityNote: 'No signs of instability',
  //           bellyOff: 'notdone',
  //           irls: '+ve',
  //           erls: 'notdone',
  //           rcTearNote: 'No signs of RC tear',
  //           scapularAssistanceTest: '+ve',
  //           scapularRetractionTest: 'notdone',
  //           acromioTest: '-v',
  //           obrienTest: '+ve',
  //           passiveTest: 'notdone',
  //           modifiedTest: '-v',
  //           suspectDiagnose: 'Meniscal injury',
  //           obrienTestNote: 'this is a note',
  //           scapularStabilityNote: 'this is a note',
  //           treatmentNote: 'this is a note',
  //         ),
  //       ),
  //       Session(
  //         id: 2,
  //         date: DateTime.now().add(Duration(days: 3)),
  //         shoulder: Shoulder(
  //           cervicalFree: true,
  //           history: 'Previous knee injury while playing sports',
  //           place: 'Clinic C',
  //           vas: 'Severe',
  //           palpation: 'Tender at the patellar region',
  //           flexionNote: 'Limited flexion',
  //           flexionNum: 90,
  //           extensionNote: 'Normal extension',
  //           extensionNum: 2,
  //           abdNote: 'Painful abduction',
  //           abdNum: 60,
  //           erNote: 'Normal external rotation',
  //           erNum: 45,
  //           irNote: 'Limited internal rotation',
  //           irNum: 30,
  //           hawkinsTest: '+ve',
  //           neerTest: '-v',
  //           posterior: 'notdone',
  //           impingementNote: 'Negative impingement sign',
  //           apprehension: 'notdone',
  //           relocation: 'notdone',
  //           instabilityNote: 'No signs of instability',
  //           bellyOff: 'notdone',
  //           irls: '+ve',
  //           erls: 'notdone',
  //           rcTearNote: 'No signs of RC tear',
  //           scapularAssistanceTest: '+ve',
  //           scapularRetractionTest: 'notdone',
  //           acromioTest: '-v',
  //           obrienTest: '+ve',
  //           passiveTest: 'notdone',
  //           modifiedTest: '-v',
  //           suspectDiagnose: 'Meniscal injury',
  //           obrienTestNote: 'this is a note',
  //           scapularStabilityNote: 'this is a note',
  //           treatmentNote: 'this is a note',
  //         ),
  //       ),
  //     ],
  //   ),
  //   Patient(
  //     name: 'Bob Smith',
  //     age: 28,
  //     occupation: 'Software Developer',
  //     medicalRef: '987654',
  //     weight: 70,
  //     chiefComplaint: 'Knee Pain',
  //     course: 'Orthopedic Consultation',
  //     presentedArea: 'Shoulder',
  //     sessions: [
  //       Session(
  //         id: 1,
  //         date: DateTime.now().add(Duration(days: 2)),
  //         shoulder: Shoulder(
  //           cervicalFree: true,
  //           history: 'Previous knee injury while playing sports',
  //           place: 'Clinic C',
  //           vas: 'Severe',
  //           palpation: 'Tender at the patellar region',
  //           flexionNote: 'Limited flexion',
  //           flexionNum: 90,
  //           extensionNote: 'Normal extension',
  //           extensionNum: 2,
  //           abdNote: 'Painful abduction',
  //           abdNum: 60,
  //           erNote: 'Normal external rotation',
  //           erNum: 45,
  //           irNote: 'Limited internal rotation',
  //           irNum: 30,
  //           hawkinsTest: '+ve',
  //           neerTest: '-v',
  //           posterior: 'notdone',
  //           impingementNote: 'Negative impingement sign',
  //           apprehension: 'notdone',
  //           relocation: 'notdone',
  //           instabilityNote: 'No signs of instability',
  //           bellyOff: 'notdone',
  //           irls: '+ve',
  //           erls: 'notdone',
  //           rcTearNote: 'No signs of RC tear',
  //           scapularAssistanceTest: '+ve',
  //           scapularRetractionTest: 'notdone',
  //           acromioTest: '-v',
  //           obrienTest: '+ve',
  //           passiveTest: 'notdone',
  //           modifiedTest: '-v',
  //           suspectDiagnose: 'Meniscal injury',
  //           obrienTestNote: 'this is a note',
  //           scapularStabilityNote: 'this is a note',
  //           treatmentNote: 'this is a note',
  //         ),
  //       ),
  //     ],
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetPatientsHandler(newPatientRepository: NewPatientRepository()),
      child: BlocBuilder<GetPatientsHandler, GetPatientsState>(
        builder: (context, state) {
          if (state is GetPatientsLoaded) {
            return Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: state.patients.length,
                itemBuilder: (context, index) {
                  return PatientCard(patient: state.patients[index]);
                },
                separatorBuilder: (context, index) =>
                    SizedBox(height: 12.height),
              ),
            );
          } else if (state is GetPatientsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GetPatientsError) {
            return Center(child: Text("Error: ${state.error}"));
          } else {
            return const SizedBox(child: Text("Other state has been called"));
          }
        },
      ),
    );
  }
}
