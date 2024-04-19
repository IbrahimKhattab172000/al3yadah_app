// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cubit.dart';

abstract class FollowupState {}

class FollowUpInitial extends FollowupState {}

class FollowUpLoading extends FollowupState {}

class FollowUpAdding extends FollowupState {
  final int? sessionNumber;
  final int? roomFlexionNumber;
  final String? roomFlexionNote;
  final int? roomExtensionNumber;
  final String? roomExtensionNote;
  final String? muscleTestNote;
  final String? painPlaceNote;
  final int? painPlaceVasNumber;
  final String? painPlaceVasNote;

  FollowUpAdding({
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

  FollowUpAdding copyWith({
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
    return FollowUpAdding(
      sessionNumber: sessionNumber ?? this.sessionNumber,
      roomFlexionNumber: roomFlexionNumber ?? this.roomFlexionNumber,
      roomFlexionNote: roomFlexionNote ?? this.roomFlexionNote,
      roomExtensionNumber: roomExtensionNumber ?? this.roomExtensionNumber,
      roomExtensionNote: roomExtensionNote ?? this.roomExtensionNote,
      muscleTestNote: muscleTestNote ?? this.muscleTestNote,
      painPlaceNote: painPlaceNote ?? this.painPlaceNote,
      painPlaceVasNumber: painPlaceVasNumber ?? this.painPlaceVasNumber,
      painPlaceVasNote: painPlaceVasNote ?? this.painPlaceVasNote,
    );
  }
}
