// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NewPatient {
  String name;
  int age;
  String occupation;
  String medicalRef;
  int weight;
  String chiefComplaint;
  String course;
  String presentedArea;
  NewPatient({
    required this.name,
    required this.age,
    required this.occupation,
    required this.medicalRef,
    required this.weight,
    required this.chiefComplaint,
    required this.course,
    required this.presentedArea,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
      'occupation': occupation,
      'medicalRef': medicalRef,
      'weight': weight,
      'chiefComplaint': chiefComplaint,
      'course': course,
      'presentedArea': presentedArea,
    };
  }

  factory NewPatient.fromMap(Map<String, dynamic> map) {
    return NewPatient(
      name: map['name'] as String,
      age: map['age'] as int,
      occupation: map['occupation'] as String,
      medicalRef: map['medicalRef'] as String,
      weight: map['weight'] as int,
      chiefComplaint: map['chiefComplaint'] as String,
      course: map['course'] as String,
      presentedArea: map['presentedArea'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewPatient.fromJson(String source) =>
      NewPatient.fromMap(json.decode(source) as Map<String, dynamic>);

  NewPatient copyWith({
    String? name,
    int? age,
    String? occupation,
    String? medicalRef,
    int? weight,
    String? chiefComplaint,
    String? course,
    String? presentedArea,
  }) {
    return NewPatient(
      name: name ?? this.name,
      age: age ?? this.age,
      occupation: occupation ?? this.occupation,
      medicalRef: medicalRef ?? this.medicalRef,
      weight: weight ?? this.weight,
      chiefComplaint: chiefComplaint ?? this.chiefComplaint,
      course: course ?? this.course,
      presentedArea: presentedArea ?? this.presentedArea,
    );
  }
}
