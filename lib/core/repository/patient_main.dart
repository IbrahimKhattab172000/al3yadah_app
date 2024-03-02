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
        patients.add(
            Patient.fromJson(documentSnapshot.data() as Map<String, dynamic>));
      }

      return patients;
    } catch (e) {
      print('Error getting patients: $e');
      rethrow;
    }
  }

  ///----------------------------------For adding sessions---------------------------///

  Future<void> addSessionToPatient({
    required String name,
    required Session session,
  }) async {
    try {
      QuerySnapshot patientSnapshot =
          await _patientsCollection.where('name', isEqualTo: name).get();

      if (patientSnapshot.docs.isNotEmpty) {
        // Assuming 'name' is unique, so there should be only one document
        DocumentSnapshot patientDoc = patientSnapshot.docs.first;
        String patientId = patientDoc.id;

        print('Patient ID: $patientId');

        // update the patient data
        Patient existingPatient = Patient.fromJson(
          patientDoc.data() as Map<String, dynamic>,
        );

        existingPatient.addSession(session);

        await patientDoc.reference.update(existingPatient.toJson());
      } else {
        print('Patient not found with name: $name');
      }
    } catch (e) {
      print('Error adding session to patient: $e');
      rethrow;
    }
  }
}
