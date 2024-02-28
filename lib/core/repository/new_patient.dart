import 'package:al3yadah_app/core/models/patient.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

  Future<List<Patient>> getPatients() async {
    try {
      QuerySnapshot querySnapshot = await _patientsCollection.get();
      List<Patient> patients = [];

      for (QueryDocumentSnapshot documentSnapshot in querySnapshot.docs) {
        patients.add(
            Patient.fromJson(documentSnapshot.data() as Map<String, dynamic>));
      }

      return patients;
    } catch (e) {
      print('Error getting patients: $e');
      rethrow;
    }
  }
}
