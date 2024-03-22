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

        // Update the patient data
        Patient existingPatient = Patient.fromJson(
          patientDoc.data() as Map<String, dynamic>,
        );

        // Assuming the new presented area is based on the session type
        switch (session.type) {
          case 'shoulder':
            existingPatient.presentedArea = 'shoulder';
            break;
          case 'knee':
            existingPatient.presentedArea = 'knee';
            break;

          case 'ankle':
            existingPatient.presentedArea = 'ankle';

            break;

          case 'cervical':
            existingPatient.presentedArea = 'cervical';

            break;
        }

        existingPatient.addSession(session);

        await patientDoc.reference.update(existingPatient.toJson());
        //update the patients
        getPatients();
      } else {
        print('Patient not found with name: $name');
      }
    } catch (e) {
      print('Error adding session to patient: $e');
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
