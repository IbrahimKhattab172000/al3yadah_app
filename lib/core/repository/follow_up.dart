import 'package:al3yadah_app/core/models/followup.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/repository/patient_main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FollowUpRepository {
  final CollectionReference _patientsCollection =
      FirebaseFirestore.instance.collection('patients');

  Future<void> followupToPatient({
    required String name,
    required FollowUp followUp,
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

        existingPatient.addFollowUp(followUp);

        await patientDoc.reference.update(existingPatient.toJson());
        //update the patients
        PatientMainRepository().getPatients();
      } else {
        print('Patient not found with name: $name');
      }
    } catch (e) {
      print('Error adding follow to patient: $e');
      rethrow;
    }
  }
}
