import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/repository/patient_main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class GetPatientsHandler extends Cubit<GetPatientsState> {
  final PatientMainRepository patientMainRepository;

  GetPatientsHandler({required this.patientMainRepository})
      : super(GetPatientsInitial()) {
    _initial();
  }

  _initial() {
    emit(GetPatientsLoading());
    getPatients();
  }

  void getPatients() async {
    try {
      List<Patient> patients = await patientMainRepository.getPatients();

      emit(GetPatientsLoaded(patients: patients));
    } catch (e) {
      emit(GetPatientsError(error: e.toString()));
    }
  }
}
