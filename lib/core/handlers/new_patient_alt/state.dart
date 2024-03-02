part of 'handler.dart';

abstract class PatientMainState {}

final class PatientMainStateInitial extends PatientMainState {
  PatientMainStateInitial();
}

final class PatientMainStateGeneralInfo extends PatientMainState {
  final PatientGeneral patientGeneral;

  PatientMainStateGeneralInfo({
    required this.patientGeneral,
  });

  PatientMainStateGeneralInfo copyWith({
    PatientGeneral? patientGeneral,
  }) {
    return PatientMainStateGeneralInfo(
      patientGeneral: patientGeneral ?? this.patientGeneral,
    );
  }
}

final class PatientMainStateShoulder extends PatientMainState {
  late final PatientGeneral patientGeneral;
  final Shoulder? shoulder;
  final bool addingSession;

  final int currentStep;

  int get totalSteps => 5;
  bool get isLast => currentStep == 5;
  bool get isFirst => currentStep == 1;

  PatientMainStateShoulder({
    required this.patientGeneral,
    required this.currentStep,
    this.shoulder,
    required this.addingSession,
  });

  PatientMainStateShoulder copyWith({
    PatientGeneral? patientGeneral,
    Shoulder? shoulder,
    int? currentStep,
    bool? addingSession,
  }) {
    return PatientMainStateShoulder(
      patientGeneral: patientGeneral ?? this.patientGeneral,
      shoulder: shoulder ?? this.shoulder,
      currentStep: currentStep ?? this.currentStep,
      addingSession: addingSession ?? this.addingSession,
    );
  }
}

final class PatientMainStateKnee extends PatientMainState {
  PatientMainStateKnee();
}

final class PatientMainStateAnkle extends PatientMainState {
  PatientMainStateAnkle();
}

final class PatientMainStateSubmit extends PatientMainState {
  final PatientGeneral patientGeneral;
  final Shoulder shoulder;

  PatientMainStateSubmit({
    required this.patientGeneral,
    required this.shoulder,
  });
}

///----------------------------------For adding sessions---------------------------///

final class PatientMainStateAddSessionLoading extends PatientMainState {}

final class PatientMainStateAddSessionSuccess extends PatientMainState {}

final class PatientMainStateAddSessionError extends PatientMainState {
  final String errorMessage;

  PatientMainStateAddSessionError({required this.errorMessage});
}
