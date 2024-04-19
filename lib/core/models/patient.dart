import 'package:al3yadah_app/core/models/followup.dart';
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
  Session session;
  List<FollowUp>? followups;

  Patient({
    required this.name,
    required this.age,
    required this.occupation,
    required this.medicalRef,
    required this.weight,
    required this.chiefComplaint,
    required this.course,
    required this.presentedArea,
    required this.session,
    this.followups,
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
        session: Session.fromJson(json['session']),
        followups: json['followups'] != null
            ? List<FollowUp>.from(
                json['followups'].map((x) => FollowUp.fromMap(x)))
            : null,
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
        'session': session.toJson(),
        'followups': followups != null
            ? List<dynamic>.from(followups!.map((x) => x.toMap()))
            : null,
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
    Session? session,
    List<FollowUp>? followups,
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
      session: session ?? this.session,
      followups: followups ?? this.followups,
    );
  }

  void addSession(Session session) {
    this.session = session;
  }

  void addFollowUp(FollowUp followup) {
    if (followups == null) {
      followups = [followup];
    } else {
      followups!.add(followup);
    }
  }
}
