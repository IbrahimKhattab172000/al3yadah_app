// import 'package:al3yadah_app/core/handlers/new_patient_alt/handler.dart';
// import 'package:al3yadah_app/core/models/patient_general.dart';
// import 'package:al3yadah_app/core/models/sessions.dart';
// import 'package:al3yadah_app/core/repository/add_session.dart';
// import 'package:al3yadah_app/core/repository/new_patient.dart';
// import 'package:al3yadah_app/core/route_utils/route_utils.dart';
// import 'package:al3yadah_app/view/new_patient_alt/new_patient_or_session.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// part 'state.dart';

// class AddSessionHandler extends Cubit<AddSessionState> {
//   final AddSessionRepository addSessionRepository;
//   final NewPatientAltHandler newPatientAltHandler;
//   AddSessionHandler({
//     required this.addSessionRepository,
//     required this.newPatientAltHandler,
//   }) : super(AddSessionInitial());

//   void addSessionToPatient({
//     required String patientId,
//     required Session session,
//   }) async {
//     emit(AddSessionLoading());

//     try {
//       await addSessionRepository.addSessionToPatient(
//         patientId: patientId,
//         session: session,
//       );

//       emit(AddSessionSuccess());
//     } catch (e) {
//       emit(AddSessionError('Error adding session: $e'));
//     }
//   }

//   generateStateAccordingToTheSelectedPresentedArea({
//     required String presentedArea,
//     required PatientGeneral patientGeneral,
//     required int currentStep,
//   }) {
//     switch (presentedArea) {
//       case 'Shoulder':
//         NewPatientAltShoulder shoulderState = NewPatientAltShoulder(
//           patientGeneral: patientGeneral,
//           currentStep: currentStep,
//         );
//         newPatientAltHandler.emit(shoulderState);
//         RouteUtils.navigateTo(
//           NewPatientOrSession(
//             addingSession: true,
//             addingSessionState: shoulderState,
//           ),
//         );
//         break;
//       case 'Knee':
//       default:
//       // return DefaultPage();
//     }
//   }
// }
