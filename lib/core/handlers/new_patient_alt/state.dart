// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'handler.dart';

abstract class PatientMainState {}

class PatientMainStateInitial extends PatientMainState {
  PatientMainStateInitial();
}

class PatientMainStateGeneralInfo extends PatientMainState {
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

class PatientMainStateShoulder extends PatientMainState {
  late final PatientGeneral patientGeneral;
  final Shoulder? shoulder;
  // final bool addingSession;

  final int currentStep;

  int get totalSteps => 5;
  bool get isLast => currentStep == 5;
  bool get isFirst => currentStep == 1;

  PatientMainStateShoulder({
    required this.patientGeneral,
    required this.currentStep,
    this.shoulder,
    // required this.addingSession,
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
      // addingSession: addingSession ?? this.addingSession,
    );
  }
}

class PatientMainStateKnee extends PatientMainState {
  late final PatientGeneral patientGeneral;
  final Knee? knee;
  // final bool addingSession;

  final int currentStep;

  int get totalSteps => 3;
  bool get isLast => currentStep == 3;
  bool get isFirst => currentStep == 1;
  PatientMainStateKnee({
    required this.patientGeneral,
    this.knee,
    // required this.addingSession,
    required this.currentStep,
  });

  PatientMainStateKnee copyWith({
    PatientGeneral? patientGeneral,
    Knee? knee,
    bool? addingSession,
    int? currentStep,
  }) {
    return PatientMainStateKnee(
      patientGeneral: patientGeneral ?? this.patientGeneral,
      knee: knee ?? this.knee,
      // addingSession: addingSession ?? this.addingSession,
      currentStep: currentStep ?? this.currentStep,
    );
  }
}

class PatientMainStateAnkle extends PatientMainState {
  late final PatientGeneral patientGeneral;
  final Ankle? ankle;
  // final bool addingSession;

  final int currentStep;

  int get totalSteps => 2;
  bool get isLast => currentStep == 2;
  bool get isFirst => currentStep == 1;
  PatientMainStateAnkle({
    required this.patientGeneral,
    this.ankle,
    // required this.addingSession,
    required this.currentStep,
  });

  PatientMainStateAnkle copyWith({
    PatientGeneral? patientGeneral,
    Ankle? ankle,
    bool? addingSession,
    int? currentStep,
  }) {
    return PatientMainStateAnkle(
      patientGeneral: patientGeneral ?? this.patientGeneral,
      ankle: ankle ?? this.ankle,
      // addingSession: addingSession ?? this.addingSession,
      currentStep: currentStep ?? this.currentStep,
    );
  }
}

class PatientMainStateCervical extends PatientMainState {
  late final PatientGeneral patientGeneral;
  final Cervical? cervical;
  // final bool addingSession;

  final int currentStep;

  int get totalSteps => 4;
  bool get isLast => currentStep == 4;
  bool get isFirst => currentStep == 1;
  PatientMainStateCervical({
    required this.patientGeneral,
    this.cervical,
    // required this.addingSession,
    required this.currentStep,
  });

  PatientMainStateCervical copyWith({
    PatientGeneral? patientGeneral,
    Cervical? cervical,
    bool? addingSession,
    int? currentStep,
  }) {
    return PatientMainStateCervical(
      patientGeneral: patientGeneral ?? this.patientGeneral,
      cervical: cervical ?? this.cervical,
      // addingSession: addingSession ?? this.addingSession,
      currentStep: currentStep ?? this.currentStep,
    );
  }
}

class PatientMainStateLumbar extends PatientMainState {
  late final PatientGeneral patientGeneral;
  final Lumbar? lumbar;
  // final bool addingSession;

  final int currentStep;

  int get totalSteps => 3;
  bool get isLast => currentStep == 3;
  bool get isFirst => currentStep == 1;
  PatientMainStateLumbar({
    required this.patientGeneral,
    this.lumbar,
    // required this.addingSession,
    required this.currentStep,
  });

  PatientMainStateLumbar copyWith({
    PatientGeneral? patientGeneral,
    Lumbar? lumbar,
    bool? addingSession,
    int? currentStep,
  }) {
    return PatientMainStateLumbar(
      patientGeneral: patientGeneral ?? this.patientGeneral,
      lumbar: lumbar ?? this.lumbar,
      // addingSession: addingSession ?? this.addingSession,
      currentStep: currentStep ?? this.currentStep,
    );
  }
}

class PatientMainStateElbow extends PatientMainState {
  late final PatientGeneral patientGeneral;
  final Elbow? elbow;
  // final bool addingSession;

  final int currentStep;

  int get totalSteps => 2;
  bool get isLast => currentStep == 2;
  bool get isFirst => currentStep == 1;
  PatientMainStateElbow({
    required this.patientGeneral,
    this.elbow,
    // required this.addingSession,
    required this.currentStep,
  });

  PatientMainStateElbow copyWith({
    PatientGeneral? patientGeneral,
    Elbow? elbow,
    bool? addingSession,
    int? currentStep,
  }) {
    return PatientMainStateElbow(
      patientGeneral: patientGeneral ?? this.patientGeneral,
      elbow: elbow ?? this.elbow,
      // addingSession: addingSession ?? this.addingSession,
      currentStep: currentStep ?? this.currentStep,
    );
  }
}

///----------------------------------For adding sessions---------------------------///

final class PatientMainStateAddSessionLoading extends PatientMainState {}

final class PatientMainStateAddSessionSuccess extends PatientMainState {}

final class PatientMainStateAddSessionError extends PatientMainState {
  final String errorMessage;

  PatientMainStateAddSessionError({required this.errorMessage});
}
