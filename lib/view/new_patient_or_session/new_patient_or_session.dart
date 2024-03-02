import 'package:al3yadah_app/core/handlers/new_patient_alt/handler.dart';
import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/core/helpers/validator.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/new_patient_or_session/shoulder/view.dart';
import 'package:al3yadah_app/widgets/app/app_stepper.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_drop_down_menu.dart';
import 'package:al3yadah_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPatientOrSession extends StatelessWidget {
  PatientMainState? addingSessionState;
  NewPatientOrSession({
    super.key,
    this.addingSessionState,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: "New Patient"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              BlocBuilder<PatientMainHandler, PatientMainState>(
                builder: (context, state) {
                  if (state is PatientMainStateGeneralInfo) {
                    return NewPatientGeneralInfoWidget(state: state);
                  } else if (state is PatientMainStateShoulder) {
                    return NewPatientShoulderWidget(state: state);
                  } else {
                    return SizedBox(
                      child: Text("nooo state${state.toString()}"),
                    );
                  }
                },
              ),
              SizedBox(height: 40.height),
              BlocBuilder<PatientMainHandler, PatientMainState>(
                builder: (context, state) {
                  return BackAndForthAfterSelectingThePresentedAreaButtons(
                    state: state,
                  );
                },
              ),
              SizedBox(height: Utils.bottomDevicePadding),
            ],
          ),
        ),
      ),
    );
  }
}

class BackAndForthAfterSelectingThePresentedAreaButtons
    extends StatelessWidget {
  final PatientMainState state;

  const BackAndForthAfterSelectingThePresentedAreaButtons({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppButton.outline(
          title: "Back",
          onTap: () {
            if (state is PatientMainStateGeneralInfo) {
              RouteUtils.pop();
            } else if (state is PatientMainStateShoulder) {
              context.read<PatientMainHandler>().previousStepShoulder();
            }
          },
          titleColor: AppColors.primary,
        ),
        AppButton(
          title: state is PatientMainStateShoulder &&
                  (state as PatientMainStateShoulder).isLast &&
                  !(state as PatientMainStateShoulder).addingSession
              ? "Submit"
              : state is PatientMainStateShoulder &&
                      (state as PatientMainStateShoulder).addingSession &&
                      (state as PatientMainStateShoulder).isLast
                  ? "Add session"
                  : "Next",
          color: AppColors.primary,
          onTap: () {
            if (state is PatientMainStateGeneralInfo) {
              context
                  .read<PatientMainHandler>()
                  .moveNextAccordingToPresentedArea(
                    presentedArea: (state as PatientMainStateGeneralInfo)
                        .patientGeneral
                        .presentedArea,
                  );
            } else if (state is PatientMainStateShoulder) {
              context.read<PatientMainHandler>().nextStepShoulder();
            }
          },
        ),
      ],
    );
  }
}

class NewPatientGeneralInfoWidget extends StatelessWidget {
  final PatientMainStateGeneralInfo state;
  const NewPatientGeneralInfoWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<PatientMainHandler>().formKey,
      child: Column(
        children: [
          AppTextField(
            label: "Name",
            validator: Validator.name,
            onChanged: (value) => state.patientGeneral.name = value,
          ),
          _spacer(),
          AppTextField(
            label: "Age",
            inputType: TextInputType.number,
            validator: Validator.empty,
            onChanged: (value) => state.patientGeneral.age = int.parse(value),
          ),
          _spacer(),
          AppTextField(
            label: "Occupation",
            validator: Validator.empty,
            onChanged: (value) => state.patientGeneral.occupation = value,
          ),
          _spacer(),
          AppTextField(
            label: "Medical ref",
            validator: Validator.empty,
            onChanged: (value) => state.patientGeneral.medicalRef = value,
          ),
          _spacer(),
          AppTextField(
            label: "Weight",
            inputType: TextInputType.number,
            validator: Validator.empty,
            onChanged: (value) =>
                state.patientGeneral.weight = int.tryParse(value)!,
          ),
          _spacer(),
          AppTextField(
            label: "Chief Complain",
            validator: Validator.empty,
            onChanged: (value) => state.patientGeneral.chiefComplaint = value,
          ),
          _spacer(),
          AppTextField(
            label: "Course",
            validator: Validator.empty,
            onChanged: (value) {
              state.patientGeneral.course = value;
            },
          ),
          _spacer(),
          AppDropDownMenu(
            label: "Presented Area",
            hint: 'select',
            items: context.read<PatientMainHandler>().areas,
            onChange: (value) {
              state.patientGeneral.presentedArea = value!;
            },
          ),
          _spacer(),
        ],
      ),
    );
  }
}

Widget _spacer() => const SizedBox(height: 16.0);

class NewPatientShoulderWidget extends StatelessWidget {
  final PatientMainStateShoulder state;
  const NewPatientShoulderWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppStepper(
          currentStep: state.currentStep,
          totalSteps: state.totalSteps,
        ),
        Column(
          children: [
            SizedBox(height: 24.height),
            ShoulderContentView(state: state),
            // _Buttons(),
            SizedBox(height: Utils.bottomDevicePadding),
          ],
        ),
      ],
    );
  }
}
