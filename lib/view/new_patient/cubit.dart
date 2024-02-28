// import 'package:al3yadah_app/core/models/patient.dart';
// import 'package:al3yadah_app/core/models/sessions.dart';
// import 'package:al3yadah_app/core/models/shoulder.dart';
// import 'package:al3yadah_app/core/repository/new_patient.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// part 'state.dart';

// //TODO: Inshallah I'm planning to make this the main handlers for the whole process and create states for each selection from the selcted areas
// //TODO: also inshallah I'm plannning to think about creating a new object "add session"
// //In general "Let's think about how to add sessions to the  existing patient and how to create new one"

// class NewPatientCubit extends Cubit<NewPatientStates> {
//   NewPatientCubit() : super(NewPatientInit());

//   static NewPatientCubit of(context) => BlocProvider.of(context);

//   String? name;
//   int? age;
//   String? occupation;
//   String? medicalRef;
//   int? weight;
//   String? chiefComplaint;
//   String? course;
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   Patient patient = Patient(
//     name: '',
//     age: 0,
//     occupation: '',
//     medicalRef: '',
//     weight: 0,
//     chiefComplaint: '',
//     course: '',
//     presentedArea: '',
//     sessions: [
//       Session(
//         id: 1,
//         date: DateTime.now(),
//         shoulder: Shoulder(
//           cervicalFree: true,
//           history: "history",
//           suspectDiagnose: "suspectDiagnose",
//           place: "place",
//           vas: "vas",
//           palpation: "palpation",
//           flexionNote: "flexionNote",
//           flexionNum: 55,
//           extensionNote: "extensionNote",
//           extensionNum: 22,
//           abdNote: "abdNote",
//           abdNum: 11,
//           erNote: "erNote",
//           erNum: 11,
//           irNote: "irNote",
//           irNum: 4,
//           hawkinsTest: "hawkinsTest",
//           neerTest: "neerTest",
//           posterior: "posterior",
//           impingementNote: "impingementNote",
//           apprehension: "apprehension",
//           relocation: "relocation",
//           instabilityNote: "instabilityNote",
//           bellyOff: "bellyOff",
//           irls: "irls",
//           erls: "erls",
//           rcTearNote: "rcTearNote",
//           scapularAssistanceTest: "scapularAssistanceTest",
//           scapularRetractionTest: "scapularRetractionTest",
//           acromioTest: "acromioTest",
//           obrienTest: "obrienTest",
//           passiveTest: "passiveTest",
//           modifiedTest: "modifiedTest",
//           obrienTestNote: "obrienTestNote",
//           scapularStabilityNote: "scapularStabilityNote",
//           treatmentNote: "treatmentNote",
//         ),
//       ),
//     ],
//   );

//   String? selectedArea;

//   // List of areas
//   List<String> areas = [
//     'Shoulder',
//     'Knee',
//     'Ankle',
//     'Cervical',
//     'Lumbar',
//     'Elbow'
//   ];

//   void selectArea({required String area}) {
//     selectedArea = area;
//     _emit(NewPatientInit());
//   }

//   bool get isStateLoading {
//     return state is NewPatientLoading;
//   }

//   void _emit(NewPatientStates state) {
//     if (!isClosed) {
//       emit(state);
//     }
//   }

//   // Method to set the gathered data for the first page
//   void setFirstPageData() {
//     patient = patient.copyWith(
//       name: name,
//       age: age,
//       occupation: occupation,
//       medicalRef: medicalRef,
//       weight: weight,
//       chiefComplaint: chiefComplaint,
//       course: course,
//     );
//   }

//   submitNewPatient() async {
//     NewPatientRepository().addPatient(patient: patient);
//   }
// }
