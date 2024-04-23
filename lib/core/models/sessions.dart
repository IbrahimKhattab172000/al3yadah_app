import 'package:al3yadah_app/core/models/ankle.dart';
import 'package:al3yadah_app/core/models/cervical.dart';
import 'package:al3yadah_app/core/models/elbow.dart';
import 'package:al3yadah_app/core/models/knee.dart';
import 'package:al3yadah_app/core/models/lumbar.dart';
import 'package:al3yadah_app/core/models/shoulder.dart';
import 'package:al3yadah_app/core/models/wrest_finger.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class Session {
  // final int id;
  final DateTime date;
  final String type;
  Session({
    // required this.id,
    required this.date,
    required this.type,
  });

//Gets overrided down there
  Map<String, dynamic> toJson();
//Gets overrided down there

  factory Session.fromJson(Map<String, dynamic> map) {
    switch (map['type'] as String) {
      case 'shoulder':
        return ShoulderSession.fromJson(map);
      case 'knee':
        return KneeSession.fromJson(map);

      case 'ankle':
        return AnkleSession.fromJson(map);
      case 'cervical':
        return CervicalSession.fromJson(map);

      case 'lumbar':
        return LumbarSession.fromJson(map);

      case 'elbow':
        return ElbowSession.fromJson(map);
      case 'wrestfinger':
        return WrestFingerSession.fromJson(map);
      default:
        throw UnimplementedError('fromJson not implemented for Session');
    }
  }
}

class ShoulderSession extends Session {
  final Shoulder shoulder;

  ShoulderSession({
    // required int id,
    required super.date,
    required this.shoulder,
  }) : super(
          // id: id,
          type: 'shoulder',
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      // 'id': id,
      'date': date,
      'type': type,
      'shoulder': shoulder.toJson(),
    };
  }

  @override
  factory ShoulderSession.fromJson(Map<String, dynamic> map) {
    return ShoulderSession(
      // id: map['id'] as int,
      date: (map['date'] as Timestamp).toDate(),
      shoulder: Shoulder.fromJson(map['shoulder'] as Map<String, dynamic>),
    );
  }
}

class KneeSession extends Session {
  final Knee knee;

  KneeSession({
    // required int id,
    required super.date,
    required this.knee,
  }) : super(
          // id: id,
          type: 'knee',
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      // 'id': id,
      'date': date,
      'type': type,
      'knee': knee.toMap(),
    };
  }

  @override
  factory KneeSession.fromJson(Map<String, dynamic> map) {
    return KneeSession(
      // id: map['id'] as int,
      date: (map['date'] as Timestamp).toDate(),
      knee: Knee.fromMap(map['knee'] as Map<String, dynamic>),
    );
  }
}

class AnkleSession extends Session {
  final Ankle ankle;

  AnkleSession({
    // required int id,
    required super.date,
    required this.ankle,
  }) : super(
          // id: id,
          type: 'ankle',
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      // 'id': id,
      'date': date,
      'type': type,
      'ankle': ankle.toMap(),
    };
  }

  @override
  factory AnkleSession.fromJson(Map<String, dynamic> map) {
    return AnkleSession(
      // id: map['id'] as int,
      date: (map['date'] as Timestamp).toDate(),
      ankle: Ankle.fromMap(map['ankle'] as Map<String, dynamic>),
    );
  }
}

class CervicalSession extends Session {
  final Cervical cervical;

  CervicalSession({
    // required int id,
    required super.date,
    required this.cervical,
  }) : super(
          // id: id,
          type: 'cervical',
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      // 'id': id,
      'date': date,
      'type': type,
      'cervical': cervical.toMap(),
    };
  }

  @override
  factory CervicalSession.fromJson(Map<String, dynamic> map) {
    return CervicalSession(
      // id: map['id'] as int,
      date: (map['date'] as Timestamp).toDate(),
      cervical: Cervical.fromMap(map['cervical'] as Map<String, dynamic>),
    );
  }
}

class LumbarSession extends Session {
  final Lumbar lumbar;

  LumbarSession({
    // required int id,
    required super.date,
    required this.lumbar,
  }) : super(
          // id: id,
          type: 'lumbar',
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      // 'id': id,
      'date': date,
      'type': type,
      'lumbar': lumbar.toMap(),
    };
  }

  @override
  factory LumbarSession.fromJson(Map<String, dynamic> map) {
    return LumbarSession(
      // id: map['id'] as int,
      date: (map['date'] as Timestamp).toDate(),
      lumbar: Lumbar.fromMap(map['lumbar'] as Map<String, dynamic>),
    );
  }
}

class ElbowSession extends Session {
  final Elbow elbow;

  ElbowSession({
    // required int id,
    required super.date,
    required this.elbow,
  }) : super(
          // id: id,
          type: 'elbow',
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      // 'id': id,
      'date': date,
      'type': type,
      'elbow': elbow.toMap(),
    };
  }

  @override
  factory ElbowSession.fromJson(Map<String, dynamic> map) {
    return ElbowSession(
      // id: map['id'] as int,
      date: (map['date'] as Timestamp).toDate(),
      elbow: Elbow.fromMap(map['elbow'] as Map<String, dynamic>),
    );
  }
}

class WrestFingerSession extends Session {
  final WrestFinger wrestFinger;

  WrestFingerSession({
    // required int id,
    required super.date,
    required this.wrestFinger,
  }) : super(
          // id: id,
          type: 'wrestfinger',
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      // 'id': id,
      'date': date,
      'type': type,
      'wrestfinger': wrestFinger.toMap(),
    };
  }

  @override
  factory WrestFingerSession.fromJson(Map<String, dynamic> map) {
    return WrestFingerSession(
      // id: map['id'] as int,
      date: (map['date'] as Timestamp).toDate(),
      wrestFinger:
          WrestFinger.fromMap(map['wrestfinger'] as Map<String, dynamic>),
    );
  }
}
