part of 'cubit.dart';

abstract class NewPatientStates {}

class NewPatientInit extends NewPatientStates {}

class NewPatientLoading extends NewPatientStates {}

class NewPatientDataLoaded extends NewPatientStates {}

// New state for when there is an error in the gathered data
class NewPatientDataError extends NewPatientStates {
  final String errorMessage;

  NewPatientDataError(this.errorMessage);
}
