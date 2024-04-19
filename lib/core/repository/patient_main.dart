import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/models/sessions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PatientMainRepository {
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
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;

        if (data != null) {
          patients.add(Patient.fromJson(data));
        }
      }

      return patients;
    } catch (e) {
      print('Error getting patients: $e');
      rethrow;
    }
  }

  // search for patient by name--------
  Future<List<Patient>> searchPatientByName(String name) async {
    try {
      QuerySnapshot querySnapshot = await _patientsCollection.get();
      List<Patient> patients = [];

      for (QueryDocumentSnapshot documentSnapshot in querySnapshot.docs) {
        Map<String, dynamic>? data =
            documentSnapshot.data() as Map<String, dynamic>?;

        if (data != null) {
          Patient patient = Patient.fromJson(data);
          // Check if the patient name starts with the search name
          if (patient.name.toLowerCase().startsWith(name.toLowerCase())) {
            patients.add(patient);
          }
        }
      }

      return patients;
    } catch (e) {
      print('Error searching patients by name: $e');
      throw e;
    }
  }
}
