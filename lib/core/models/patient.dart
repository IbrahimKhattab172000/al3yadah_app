import 'package:al3yadah_app/core/models/shoulder.dart';

class Patient {
  String name;
  int age;
  String occupation;
  String medicalRef;
  int weight;
  String chiefComplaint;
  String course;
  String presentedArea;
  Shoulder shoulder;

  Patient({
    required this.name,
    required this.age,
    required this.occupation,
    required this.medicalRef,
    required this.weight,
    required this.chiefComplaint,
    required this.course,
    required this.presentedArea,
    required this.shoulder,
  });

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
        name: json['name'],
        age: json['age'],
        occupation: json['occupation'],
        medicalRef: json['medicalRef'],
        weight: json['weight'],
        chiefComplaint: json['chiefComplaint'],
        course: json['course'],
        presentedArea: json['presentedArea'],
        shoulder: Shoulder.fromJson(json['shoulder']),
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
        'occupation': occupation,
        'medicalRef': medicalRef,
        'weight': weight,
        'chiefComplaint': chiefComplaint,
        'course': course,
        'presentedArea': presentedArea,
        'shoulder': shoulder.toJson(),
      };
}
