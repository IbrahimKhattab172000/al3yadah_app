import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/models/followup.dart';
import 'package:al3yadah_app/widgets/app/app_data_show_card.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:flutter/material.dart';

class FollowUpDetails extends StatelessWidget {
  final FollowUp followUp;
  const FollowUpDetails({
    super.key,
    required this.followUp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: "Follow up details"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              AppDataShowCard(
                title: "Session no",
                value: followUp.sessionNumber,
              ),
              AppDataShowCard(
                title: "ROM Flextion",
                value: followUp.roomFlexionNumber.toString(),
              ),
              AppDataShowCard(
                title: "ROM Flextion note",
                value: followUp.roomFlexionNote,
              ),
              AppDataShowCard(
                title: "ROM Extension",
                value: followUp.roomExtensionNumber.toString(),
              ),
              AppDataShowCard(
                title: "ROM Extension note",
                value: followUp.roomExtensionNote.toString(),
              ),
              AppDataShowCard(
                title: "Muscle Test",
                value: followUp.muscleTestNote.toString(),
              ),
              AppDataShowCard(
                title: "Pain place",
                value: followUp.painPlaceNote.toString(),
              ),
              AppDataShowCard(
                title: "Pain vas",
                value: followUp.painPlaceVasNote.toString(),
              ),
              AppDataShowCard(
                title: "Pain note",
                value: followUp.painPlaceVasNote.toString(),
              ),
              SizedBox(width: 20.width),
            ],
          ),
        ),
      ),
    );
  }
}
