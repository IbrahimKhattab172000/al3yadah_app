import 'package:al3yadah_app/core/models/patient_general.dart';
import 'package:al3yadah_app/core/models/shoulder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class NewPatientAltHandler extends Cubit<NewPatientAltState> {
  NewPatientAltHandler() : super(NewPatientAltInitial()) {
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

  final int totalSteps = 5;
  int currentStep = 1;

  bool get isLast => currentStep == 5;
  bool get isFirst => currentStep == 1;

  void nextStep() {
    currentStep++;
    emit((state as NewPatientAltShoulder));
  }

  void previousStep() {
    currentStep--;
    emit((state as NewPatientAltShoulder));
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
        ),
      );
    } else if (state is NewPatientAltGeneralInfo &&
        (state as NewPatientAltGeneralInfo).patientGeneral.presentedArea ==
            "Knee") {
      emit(NewPatientAltKnee());
    } else {
      emit(NewPatientAltAnkle());
    }
  }

  moveInThePresentedArea({required String presentedArea}) {
    if (state is NewPatientAltGeneralInfo &&
        (state as NewPatientAltGeneralInfo).patientGeneral.presentedArea ==
            "Shoulder") {
      emit(
        NewPatientAltShoulder(
          patientGeneral: (state as NewPatientAltGeneralInfo).patientGeneral,
          shoulder: null,
        ),
      );
    } else if (state is NewPatientAltGeneralInfo &&
        (state as NewPatientAltGeneralInfo).patientGeneral.presentedArea ==
            "Knee") {
      emit(NewPatientAltKnee());
    } else {
      emit(NewPatientAltAnkle());
    }
  }
}
