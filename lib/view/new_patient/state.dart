part of 'cubit.dart';

abstract class NewPatientStates {}

class NewPatientInit extends NewPatientStates {}

class NewPatientLoading extends NewPatientStates {}

// class NewPatientData extends NewPatientStates {
//   final Patient patient;
// }

enum PresentedArea {
  Shoulder,
  Knee,
  Ankle,
  Cervical,
  Lumbar,
  Elbow,
}
