import 'package:al3yadah_app/core/models/sessions.dart';

class Patient {
  String name;
  int age;
  String occupation;
  String medicalRef;
  int weight;
  String chiefComplaint;
  String course;
  String presentedArea;
  List<Session> sessions;

  Patient({
    required this.name,
    required this.age,
    required this.occupation,
    required this.medicalRef,
    required this.weight,
    required this.chiefComplaint,
    required this.course,
    required this.presentedArea,
    required this.sessions,
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
        sessions: List<Session>.from(
          json['sessions'].map((sessionJson) => Session.fromJson(sessionJson)),
        ),
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
        'sessions': sessions.map((session) => session.toJson()).toList(),
      };

  Patient copyWith({
    String? name,
    int? age,
    String? occupation,
    String? medicalRef,
    int? weight,
    String? chiefComplaint,
    String? course,
    String? presentedArea,
    List<Session>? sessions,
  }) {
    return Patient(
      name: name ?? this.name,
      age: age ?? this.age,
      occupation: occupation ?? this.occupation,
      medicalRef: medicalRef ?? this.medicalRef,
      weight: weight ?? this.weight,
      chiefComplaint: chiefComplaint ?? this.chiefComplaint,
      course: course ?? this.course,
      presentedArea: presentedArea ?? this.presentedArea,
      sessions: sessions ?? this.sessions,
    );
  }

  void addSession(Session session) {
    sessions.add(session);
  }
}
