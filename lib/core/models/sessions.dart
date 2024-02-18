import 'dart:convert';

import 'package:al3yadah_app/core/models/shoulder.dart';

class Session {
  final int id;
  final DateTime date;
  final Shoulder shoulder;

  Session({
    required this.id,
    required this.date,
    required this.shoulder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'date': date.millisecondsSinceEpoch,
      'shoulder': shoulder.toMap(),
    };
  }

  factory Session.fromMap(Map<String, dynamic> map) {
    return Session(
      id: map['id'] as int,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      shoulder: Shoulder.fromMap(map['shoulder'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Session.fromJson(String source) =>
      Session.fromMap(json.decode(source) as Map<String, dynamic>);
}
