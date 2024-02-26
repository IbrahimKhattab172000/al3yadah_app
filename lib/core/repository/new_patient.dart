import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:al3yadah_app/core/models/patient.dart';

class NewPatientRepository {
  final CollectionReference _patientsCollection =
      FirebaseFirestore.instance.collection('patients');

  Future<void> addPatient({required Patient patient}) async {
    try {
      await _patientsCollection.add(patient.toJson());
    } catch (e) {
      print('Error adding patient: $e');
      rethrow;
    }
  }
}
