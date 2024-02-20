import 'package:al3yadah_app/core/models/patient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

//TODO: Inshallah I'm planning to make this the main handlers for the whole process and create states for each selection from the selcted areas
//TODO: also inshallah I'm plannning to think about creating a new object "add session"
//In general "Let's think about how to add sessions to the  existing patient and how to create new one"

class NewPatientCubit extends Cubit<NewPatientStates> {
  NewPatientCubit() : super(NewPatientInit());

  static NewPatientCubit of(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController medicalRefController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController chiefComplaintController = TextEditingController();
  TextEditingController courseController = TextEditingController();

  Patient patient = Patient(
    name: '',
    age: 0,
    occupation: '',
    medicalRef: '',
    weight: 0,
    chiefComplaint: '',
    course: '',
    presentedArea: '',
    sessions: [],
  );

  late String selectedArea;

  // List of areas
  List<String> items = [
    'Shoulder',
    'Knee',
    'Ankle',
    'Cervical',
    'Lumbar',
    'Elbow'
  ];

  void selectArea({required String area}) {
    selectedArea = area;
    _emit(NewPatientInit());
  }

  bool get isStateLoading {
    return state is NewPatientLoading;
  }

  void _emit(NewPatientStates state) {
    if (!isClosed) {
      emit(state);
    }
  }

  // Method to set the gathered data for the first page
  void setFirstPageData({
    required String name,
    required int age,
    required String occupation,
    required String medicalRef,
    required int weight,
    required String chiefComplaint,
    required String course,
  }) {
    patient = patient.copyWith(
      name: name,
      age: age,
      occupation: occupation,
      medicalRef: medicalRef,
      weight: weight,
      chiefComplaint: chiefComplaint,
      course: course,
    );
  }

  // Method to gather data for the first page and advance to the next step
  gatherFirstPageDataAndAdvance() {
    // Retrieve data from controllers
    String name = nameController.text;
    int age = int.parse(ageController.text); // Assuming age is an integer
    String occupation = occupationController.text;
    String medicalRef = medicalRefController.text;
    int weight =
        int.parse(weightController.text); // Assuming weight is an integer
    String chiefComplaint = chiefComplaintController.text;
    String course = courseController.text;

    // Set the gathered data in the patient object
    setFirstPageData(
      name: name,
      age: age,
      occupation: occupation,
      medicalRef: medicalRef,
      weight: weight,
      chiefComplaint: chiefComplaint,
      course: course,
    );

    // Advance to the next step
    _emit(NewPatientDataLoaded());
  }
}
