import 'package:cloud_firestore/cloud_firestore.dart';

class FollowUp {
  DateTime? date;
  int? sessionNumber;
  int? roomFlexionNumber;
  String? roomFlexionNote;
  int? roomExtensionNumber;
  String? roomExtensionNote;
  String? muscleTestNote;
  String? painPlaceNote;
  int? painPlaceVasNumber;
  String? painPlaceVasNote;
  FollowUp({
    this.date,
    this.sessionNumber,
    this.roomFlexionNumber,
    this.roomFlexionNote,
    this.roomExtensionNumber,
    this.roomExtensionNote,
    this.muscleTestNote,
    this.painPlaceNote,
    this.painPlaceVasNumber,
    this.painPlaceVasNote,
  });

  FollowUp copyWith({
    DateTime? date,
    int? sessionNumber,
    int? roomFlexionNumber,
    String? roomFlexionNote,
    int? roomExtensionNumber,
    String? roomExtensionNote,
    String? muscleTestNote,
    String? painPlaceNote,
    int? painPlaceVasNumber,
    String? painPlaceVasNote,
  }) {
    return FollowUp(
      sessionNumber: sessionNumber ?? this.sessionNumber,
      roomFlexionNumber: roomFlexionNumber ?? this.roomFlexionNumber,
      roomFlexionNote: roomFlexionNote ?? this.roomFlexionNote,
      roomExtensionNumber: roomExtensionNumber ?? this.roomExtensionNumber,
      roomExtensionNote: roomExtensionNote ?? this.roomExtensionNote,
      muscleTestNote: muscleTestNote ?? this.muscleTestNote,
      painPlaceNote: painPlaceNote ?? this.painPlaceNote,
      painPlaceVasNumber: painPlaceVasNumber ?? this.painPlaceVasNumber,
      painPlaceVasNote: painPlaceVasNote ?? this.painPlaceVasNote,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'sessionNumber': sessionNumber,
      'roomFlexionNumber': roomFlexionNumber,
      'roomFlexionNote': roomFlexionNote,
      'roomExtensionNumber': roomExtensionNumber,
      'roomExtensionNote': roomExtensionNote,
      'muscleTestNote': muscleTestNote,
      'painPlaceNote': painPlaceNote,
      'painPlaceVasNumber': painPlaceVasNumber,
      'painPlaceVasNote': painPlaceVasNote,
    };
  }

  factory FollowUp.fromMap(Map<String, dynamic> map) {
    return FollowUp(
      date: map['date'] != null ? (map['date'] as Timestamp).toDate() : null,
      sessionNumber:
          map['sessionNumber'] != null ? map['sessionNumber'] as int : null,
      roomFlexionNumber: map['roomFlexionNumber'] != null
          ? map['roomFlexionNumber'] as int
          : null,
      roomFlexionNote: map['roomFlexionNote'] != null
          ? map['roomFlexionNote'] as String
          : null,
      roomExtensionNumber: map['roomExtensionNumber'] != null
          ? map['roomExtensionNumber'] as int
          : null,
      roomExtensionNote: map['roomExtensionNote'] != null
          ? map['roomExtensionNote'] as String
          : null,
      muscleTestNote: map['muscleTestNote'] != null
          ? map['muscleTestNote'] as String
          : null,
      painPlaceNote:
          map['painPlaceNote'] != null ? map['painPlaceNote'] as String : null,
      painPlaceVasNumber: map['painPlaceVasNumber'] != null
          ? map['painPlaceVasNumber'] as int
          : null,
      painPlaceVasNote: map['painPlaceVasNote'] != null
          ? map['painPlaceVasNote'] as String
          : null,
    );
  }
}
