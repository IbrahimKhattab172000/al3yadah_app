import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/validator.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/follow_up_session/cubit.dart';
import 'package:al3yadah_app/view/success/view.dart';
import 'package:al3yadah_app/widgets/app/app_double_form_field.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:al3yadah_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FollowUpSession extends StatelessWidget {
  final String patientName;
  const FollowUpSession({super.key, required this.patientName});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowUpCubit, FollowupState>(
      builder: (context, state) {
        final followUpCubit = BlocProvider.of<FollowUpCubit>(context);

        return Scaffold(
          appBar: AppAppBar(title: "Follow-up Session"),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: "Session number",
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 12.height),
                  AppTextField(
                    hint: "number",
                    validator: Validator.empty,
                    inputType: TextInputType.number,
                    onChanged: (value) => followUpCubit.updateFollowUpData(
                        sessionNumber: int.tryParse(value)),
                  ),
                  _spacer(),
                  AppText(
                    title: "ROM",
                    color: AppColors.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  _spacer(),
                  AppDoubleFormField(
                    label: "- Flexion",
                    onNoteChanged: (value) {
                      followUpCubit.updateFollowUpData(roomFlexionNote: value);
                    },
                    onNumberChanged: (value) {
                      followUpCubit.updateFollowUpData(
                          roomFlexionNumber: value);
                    },
                  ),
                  _spacer(),
                  AppDoubleFormField(
                    label: "- Extension",
                    onNoteChanged: (value) {
                      followUpCubit.updateFollowUpData(
                          roomExtensionNote: value);
                    },
                    onNumberChanged: (value) {
                      followUpCubit.updateFollowUpData(
                          roomExtensionNumber: value);
                    },
                  ),
                  _spacer(),
                  AppText(
                    title: "Muscle Test",
                    color: AppColors.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 16.height),
                  AppTextField(
                    hint: "note",
                    onChanged: (value) =>
                        followUpCubit.updateFollowUpData(muscleTestNote: value),
                    validator: Validator.empty,
                  ),
                  _spacer(),
                  SizedBox(height: 24.height),
                  AppText(
                    title: "Pain",
                    color: AppColors.primary,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  _spacer(),
                  AppTextField(
                    label: "-  Place",
                    hint: "note",
                    onChanged: (value) =>
                        followUpCubit.updateFollowUpData(painPlaceNote: value),
                    validator: Validator.empty,
                  ),
                  _spacer(),
                  AppTextField(
                    label: "-  VAS",
                    hint: "number",
                    inputType: TextInputType.number,
                    onChanged: (value) => followUpCubit.updateFollowUpData(
                        painPlaceVasNumber: int.parse(value)),
                    validator: Validator.empty,
                  ),
                  _spacer(),
                  AppTextField(
                    hint: "note",
                    onChanged: (value) => followUpCubit.updateFollowUpData(
                        painPlaceVasNote: value),
                    validator: Validator.empty,
                    maxLines: 4,
                  ),
                  _spacer(),
                  AppButton(
                    title: "Add",
                    onTap: () {
                      followUpCubit.followupToPatient(patientName: patientName);
                      RouteUtils.navigateTo(const SuccessView());
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget _spacer() => SizedBox(height: 20.height);
