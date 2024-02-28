part of 'handler.dart';

abstract class GetPatientsState {}

final class GetPatientsInitial extends GetPatientsState {}

final class GetPatientsLoading extends GetPatientsState {}

final class GetPatientsLoaded extends GetPatientsState {
  final List<Patient> patients;

  GetPatientsLoaded({required this.patients});
}

final class GetPatientsError extends GetPatientsState {
  final String error;

  GetPatientsError({required this.error});
}
