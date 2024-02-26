import 'package:al3yadah_app/core/models/patient_general.dart';
import 'package:al3yadah_app/core/models/shoulder.dart';
import 'package:al3yadah_app/core/repository/new_patient.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/success/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class NewPatientAltHandler extends Cubit<NewPatientAltState> {
  final NewPatientRepository newPatientRepository;
  NewPatientAltHandler({required this.newPatientRepository})
      : super(NewPatientAltInitial()) {
    _initial();
  }

  _initial() {
    emit(
      NewPatientAltGeneralInfo(
        patientGeneral: PatientGeneral(
          name: "name",
          age: 1,
          occupation: "occupation",
          medicalRef: "medicalRef",
          weight: 1,
          chiefComplaint: "chiefComplaint",
          course: "course",
          presentedArea: "presentedArea",
        ),
      ),
    );
  }

// TextEditingController nameController = TextEditingController();
//   TextEditingController ageController = TextEditingController();
//   TextEditingController occupationController = TextEditingController();
//   TextEditingController medicalRefController = TextEditingController();
//   TextEditingController weightController = TextEditingController();
//   TextEditingController chiefComplaintController = TextEditingController();
//   TextEditingController courseController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

// List of areas
  List<String> areas = [
    'Shoulder',
    'Knee',
    'Ankle',
    'Cervical',
    'Lumbar',
    'Elbow'
  ];
  // String? presentedArea;

  dynamic selectedIndexInterpretation({required int selectedIndex}) {
    if (selectedIndex == 0) {
      return "+ve";
    } else if (selectedIndex == 1) {
      return "-ve";
    } else {
      return "not done";
    }
  }

  void nextStepShoulder() {
    if ((state as NewPatientAltShoulder).currentStep < 5) {
      emit((state as NewPatientAltShoulder).copyWith(
          currentStep: (state as NewPatientAltShoulder).currentStep + 1));
      print((state as NewPatientAltShoulder).currentStep);
    } else {
      submitNewPatient();
      RouteUtils.navigateTo(SuccessView());
    }
  }

  void previousStepShoulder() {
    if (!(state as NewPatientAltShoulder).isFirst) {
      emit((state as NewPatientAltShoulder).copyWith(
          currentStep: (state as NewPatientAltShoulder).currentStep - 1));
      print((state as NewPatientAltShoulder).currentStep);
    } else {
      print((state as NewPatientAltShoulder).currentStep);

      emit(NewPatientAltGeneralInfo(
          patientGeneral: (state as NewPatientAltShoulder).patientGeneral));
    }
  }

  updateGeneralValues({
    String? name,
    int? age,
    String? occupation,
    String? medicalRef,
    int? weight,
    String? chiefComplaint,
    String? course,
    String? presentedArea,
  }) {
    emit(
      (state as NewPatientAltGeneralInfo).copyWith(
        patientGeneral: PatientGeneral(
            name: name!,
            age: age!,
            occupation: occupation!,
            medicalRef: medicalRef!,
            weight: weight!,
            chiefComplaint: chiefComplaint!,
            course: course!,
            presentedArea: presentedArea!),
      ),
    );
  }

  moveNextAccordingToPresentedArea({required String presentedArea}) {
    if (state is NewPatientAltGeneralInfo &&
        (state as NewPatientAltGeneralInfo).patientGeneral.presentedArea ==
            "Shoulder") {
      emit(
        NewPatientAltShoulder(
          patientGeneral: (state as NewPatientAltGeneralInfo).patientGeneral,
          currentStep: 1,
        ),
      );
    } else if (state is NewPatientAltGeneralInfo &&
        (state as NewPatientAltGeneralInfo).patientGeneral.presentedArea ==
            "Knee") {
      emit(NewPatientAltKnee());
    } else {
      return;
    }
  }

  updateShoulderValues({
    bool? cervicalFree,
    String? history,
    String? suspectDiagnose,
    String? place,
    String? vas,
    String? palpation,
    String? flexionNote,
    int? flexionNum,
    String? extensionNote,
    int? extensionNum,
    String? abdNote,
    int? abdNum,
    String? addNote,
    int? addNum,
    String? erNote,
    int? erNum,
    String? irNote,
    int? irNum,
    String? hawkinsTest,
    String? neerTest,
    String? posterior,
    String? impingementNote,
    String? apprehension,
    String? relocation,
    String? instabilityNote,
    String? bellyOff,
    String? irls,
    String? erls,
    String? rcTearNote,
    String? scapularAssistanceTest,
    String? scapularRetractionTest,
    String? scapularStabilityNote,
    String? acromioTest,
    String? obrienTest,
    String? passiveTest,
    String? modifiedTest,
    String? obrienTestNote,
    String? treatmentNote,
  }) {
    final currentShoulder =
        (state as NewPatientAltShoulder).shoulder ?? Shoulder();

    emit(
      (state as NewPatientAltShoulder).copyWith(
        shoulder: Shoulder(
          cervicalFree: cervicalFree ?? currentShoulder.cervicalFree,
          history: history ?? currentShoulder.history,
          suspectDiagnose: suspectDiagnose ?? currentShoulder.suspectDiagnose,
          place: place ?? currentShoulder.place,
          vas: vas ?? currentShoulder.vas,
          palpation: palpation ?? currentShoulder.palpation,
          flexionNote: flexionNote ?? currentShoulder.flexionNote,
          flexionNum: flexionNum ?? currentShoulder.flexionNum,
          extensionNote: extensionNote ?? currentShoulder.extensionNote,
          extensionNum: extensionNum ?? currentShoulder.extensionNum,
          abdNote: abdNote ?? currentShoulder.abdNote,
          abdNum: abdNum ?? currentShoulder.abdNum,
          addNote: addNote ?? currentShoulder.addNote,
          addNum: addNum ?? currentShoulder.addNum,
          erNote: erNote ?? currentShoulder.erNote,
          erNum: erNum ?? currentShoulder.erNum,
          irNote: irNote ?? currentShoulder.irNote,
          irNum: irNum ?? currentShoulder.irNum,
          hawkinsTest: hawkinsTest ?? currentShoulder.hawkinsTest,
          neerTest: neerTest ?? currentShoulder.neerTest,
          posterior: posterior ?? currentShoulder.posterior,
          impingementNote: impingementNote ?? currentShoulder.impingementNote,
          apprehension: apprehension ?? currentShoulder.apprehension,
          relocation: relocation ?? currentShoulder.relocation,
          instabilityNote: instabilityNote ?? currentShoulder.instabilityNote,
          bellyOff: bellyOff ?? currentShoulder.bellyOff,
          irls: irls ?? currentShoulder.irls,
          erls: erls ?? currentShoulder.erls,
          rcTearNote: rcTearNote ?? currentShoulder.rcTearNote,
          scapularAssistanceTest:
              scapularAssistanceTest ?? currentShoulder.scapularAssistanceTest,
          scapularRetractionTest:
              scapularRetractionTest ?? currentShoulder.scapularRetractionTest,
          acromioTest: acromioTest ?? currentShoulder.acromioTest,
          obrienTest: obrienTest ?? currentShoulder.obrienTest,
          passiveTest: passiveTest ?? currentShoulder.passiveTest,
          modifiedTest: modifiedTest ?? currentShoulder.modifiedTest,
          obrienTestNote: obrienTestNote ?? currentShoulder.obrienTestNote,
          scapularStabilityNote:
              scapularStabilityNote ?? currentShoulder.scapularStabilityNote,
          treatmentNote: treatmentNote ?? currentShoulder.treatmentNote,
        ),
      ),
    );
  }

  submitNewPatient() async {
    // newPatientRepository.addPatient(patient: Patient);
  }
}
