part of 'handler.dart';

abstract class NewPatientAltState {}

final class NewPatientAltInitial extends NewPatientAltState {
  NewPatientAltInitial();
}

final class NewPatientAltGeneralInfo extends NewPatientAltState {
  final PatientGeneral patientGeneral;

  NewPatientAltGeneralInfo({
    required this.patientGeneral,
  });

  NewPatientAltGeneralInfo copyWith({
    PatientGeneral? patientGeneral,
  }) {
    return NewPatientAltGeneralInfo(
      patientGeneral: patientGeneral ?? this.patientGeneral,
    );
  }
}

final class NewPatientAltShoulder extends NewPatientAltState {
  final PatientGeneral patientGeneral;
  final Shoulder? shoulder;

  final int currentStep;

  int get totalSteps => 5;
  bool get isLast => currentStep == 5;
  bool get isFirst => currentStep == 1;

  NewPatientAltShoulder({
    required this.patientGeneral,
    required this.currentStep,
    this.shoulder,
  });

  NewPatientAltShoulder copyWith({
    PatientGeneral? patientGeneral,
    Shoulder? shoulder,
    int? currentStep,
  }) {
    return NewPatientAltShoulder(
      patientGeneral: patientGeneral ?? this.patientGeneral,
      shoulder: shoulder ?? this.shoulder,
      currentStep: currentStep ?? this.currentStep,
    );
  }
}

final class NewPatientAltKnee extends NewPatientAltState {
  NewPatientAltKnee();
}

final class NewPatientAltAnkle extends NewPatientAltState {
  NewPatientAltAnkle();
}

final class NewPatientAltSubmit extends NewPatientAltState {
  final PatientGeneral patientGeneral;
  final Shoulder shoulder;

  NewPatientAltSubmit({
    required this.patientGeneral,
    required this.shoulder,
  });
}
