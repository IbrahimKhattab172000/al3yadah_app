import 'dart:developer';
import 'package:al3yadah_app/core/models/followup.dart';
import 'package:al3yadah_app/core/repository/follow_up.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/success/view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class FollowUpCubit extends Cubit<FollowupState> {
  FollowUpCubit() : super(FollowUpInitial()) {
    emit(FollowUpAdding());
  }

  static FollowUpCubit of(context) => BlocProvider.of(context);

  void updateFollowUpData({
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
    emit(
      (state as FollowUpAdding).copyWith(
        sessionNumber: sessionNumber,
        roomFlexionNumber: roomFlexionNumber,
        roomFlexionNote: roomFlexionNote,
        roomExtensionNumber: roomExtensionNumber,
        roomExtensionNote: roomExtensionNote,
        muscleTestNote: muscleTestNote,
        painPlaceNote: painPlaceNote,
        painPlaceVasNumber: painPlaceVasNumber,
        painPlaceVasNote: painPlaceVasNote,
      ),
    );
  }

  void followupToPatient({required String patientName}) async {
    final currentState = state as FollowUpAdding;

    try {
      await FollowUpRepository().followupToPatient(
        name: patientName,
        followUp: FollowUp(
          date: DateTime.now(),
          sessionNumber: currentState.sessionNumber,
          roomFlexionNumber: currentState.roomFlexionNumber,
          roomFlexionNote: currentState.roomFlexionNote,
          roomExtensionNumber: currentState.roomExtensionNumber,
          roomExtensionNote: currentState.roomExtensionNote,
          muscleTestNote: currentState.muscleTestNote,
          painPlaceNote: currentState.painPlaceNote,
          painPlaceVasNumber: currentState.painPlaceVasNumber,
          painPlaceVasNote: currentState.painPlaceVasNote,
        ),
      );
    } catch (e) {
      log("hhhhhhhh" + e.toString());
    }
  }
}
