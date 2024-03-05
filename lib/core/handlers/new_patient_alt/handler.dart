import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/models/patient_general.dart';
import 'package:al3yadah_app/core/models/sessions.dart';
import 'package:al3yadah_app/core/models/shoulder.dart';
import 'package:al3yadah_app/core/repository/patient_main.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/new_patient_or_session/new_patient_or_session.dart';
import 'package:al3yadah_app/view/success/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class PatientMainHandler extends Cubit<PatientMainState> {
  final PatientMainRepository patientMainRepository;

  PatientMainHandler({
    required this.patientMainRepository,
  }) : super(PatientMainStateInitial());

  initial({
    required bool addingSession,
    PatientGeneral? patientGeneral,
    String? presentedArea,
  }) {
    if (!addingSession) {
      emit(
        PatientMainStateGeneralInfo(
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
    } else {
      generateStateAccordingToTheSelectedPresentedAreaForAddingSessions(
        currentStep: 1,
        patientGeneral: patientGeneral!,
        presentedArea: presentedArea!,
      );
    }
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
    if ((state as PatientMainStateShoulder).currentStep < 5) {
      emit((state as PatientMainStateShoulder).copyWith(
          currentStep: (state as PatientMainStateShoulder).currentStep + 1));
      print((state as PatientMainStateShoulder).currentStep);
    } else {
      (state as PatientMainStateShoulder).addingSession
          ? addSessionToPatient()
          : submitNewPatient();
      RouteUtils.navigateTo(SuccessView());
    }
  }

  void previousStepShoulder() {
    if (!(state as PatientMainStateShoulder).isFirst) {
      emit((state as PatientMainStateShoulder).copyWith(
          currentStep: (state as PatientMainStateShoulder).currentStep - 1));
      print((state as PatientMainStateShoulder).currentStep);
    } else {
      print((state as PatientMainStateShoulder).currentStep);

      emit(PatientMainStateGeneralInfo(
          patientGeneral: (state as PatientMainStateShoulder).patientGeneral));
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
      (state as PatientMainStateGeneralInfo).copyWith(
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
    if (state is PatientMainStateGeneralInfo &&
        (state as PatientMainStateGeneralInfo).patientGeneral.presentedArea ==
            "Shoulder") {
      emit(
        PatientMainStateShoulder(
          patientGeneral: (state as PatientMainStateGeneralInfo).patientGeneral,
          currentStep: 1,
          addingSession: false,
        ),
      );
    } else if (state is PatientMainStateGeneralInfo &&
        (state as PatientMainStateGeneralInfo).patientGeneral.presentedArea ==
            "Knee") {
      emit(PatientMainStateKnee());
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
        (state as PatientMainStateShoulder).shoulder ?? Shoulder();

    emit(
      (state as PatientMainStateShoulder).copyWith(
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
    final previousState = (state as PatientMainStateShoulder);

    emit(
      PatientMainStateSubmit(
          patientGeneral: previousState.patientGeneral,
          shoulder: previousState.shoulder!),
    );

    final submitState = (state as PatientMainStateSubmit);
    patientMainRepository.addPatient(
      patient: Patient(
        age: submitState.patientGeneral.age,
        name: submitState.patientGeneral.name,
        weight: submitState.patientGeneral.weight,
        chiefComplaint: submitState.patientGeneral.chiefComplaint,
        course: submitState.patientGeneral.course,
        medicalRef: submitState.patientGeneral.medicalRef,
        occupation: submitState.patientGeneral.occupation,
        presentedArea: submitState.patientGeneral.presentedArea,
        sessions: [
          Session(
            id: 0,
            date: DateTime.now(),
            shoulder: submitState.shoulder,
          ),
        ],
      ),
    );

    print(
        "Weight: ${submitState.patientGeneral.weight} + abdNum: ${submitState.shoulder.abdNum!}");
  }

  void addSessionToPatient() async {
    final previousState = (state as PatientMainStateShoulder);

    emit(
      PatientMainStateSubmit(
        patientGeneral: previousState.patientGeneral,
        shoulder: previousState.shoulder!,
      ),
    );
    final submitState = (state as PatientMainStateSubmit);

    try {
      print(submitState.patientGeneral.name);
      await patientMainRepository.addSessionToPatient(
        name: submitState.patientGeneral.name,
        session: Session(
          id: 1,
          date: DateTime.now(),
          shoulder: submitState.shoulder,
        ),
      );

      emit(PatientMainStateAddSessionSuccess());
    } catch (e) {
      emit(PatientMainStateAddSessionError(
          errorMessage: 'Error adding session: $e'));
    }
  }

  generateStateAccordingToTheSelectedPresentedAreaForAddingSessions({
    required String presentedArea,
    required PatientGeneral patientGeneral,
    required int currentStep,
  }) {
    switch (presentedArea) {
      case 'Shoulder':
        emit(
          PatientMainStateShoulder(
            patientGeneral: patientGeneral,
            currentStep: currentStep,
            addingSession: true,
          ),
        );

        RouteUtils.navigateTo(NewPatientOrSession());

        break;
      case 'Knee':
      default:
      // return DefaultPage();
    }
  }
}


//Comment