import 'package:al3yadah_app/core/models/shoulder.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Session {
  final int id;
  final DateTime date;
  final Shoulder shoulder;

  Session({
    required this.id,
    required this.date,
    required this.shoulder,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date,
      'shoulder': shoulder.toJson(),
    };
  }

  factory Session.fromJson(Map<String, dynamic> map) {
    return Session(
      id: map['id'] as int,
      date: (map['date'] as Timestamp).toDate(), // Handle Timestamp
      shoulder: Shoulder.fromJson(map['shoulder'] as Map<String, dynamic>),
    );
  }
}
