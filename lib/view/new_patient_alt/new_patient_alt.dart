import 'package:al3yadah_app/core/handlers/new_patient_alt/handler.dart';
import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/core/helpers/validator.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/widgets/app/app_stepper.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_drop_down_menu.dart';
import 'package:al3yadah_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPatientAlt extends StatelessWidget {
  const NewPatientAlt({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewPatientAltHandler(),
      child: Scaffold(
        appBar: AppAppBar(title: "New Patient"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                BlocBuilder<NewPatientAltHandler, NewPatientAltState>(
                  builder: (context, state) {
                    if (state is NewPatientAltGeneralInfo) {
                      return NewPatientGeneralInfoWidget(state: state);
                    } else if (state is NewPatientAltShoulder) {
                      return NewPatientShoulderWidget(state: state);
                    } else {
                      return SizedBox();
                    }
                  },
                ),
                SizedBox(height: 40.height),
                BlocBuilder<NewPatientAltHandler, NewPatientAltState>(
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
      ),
    );
  }
}

class BackAndForthAfterSelectingThePresentedAreaButtons
    extends StatelessWidget {
  final NewPatientAltState state;

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
          onTap: () => RouteUtils.pop(),
          titleColor: AppColors.primary,
        ),
        AppButton(
          title: "Next",
          color: AppColors.primary,
          onTap: () {
            if (state is NewPatientAltGeneralInfo) {
              context
                  .read<NewPatientAltHandler>()
                  .moveNextAccordingToPresentedArea(
                    presentedArea: (state as NewPatientAltGeneralInfo)
                        .patientGeneral
                        .presentedArea,
                  );
            } else {
              //TODO: add the method in the handler
              //TODO:that handles the process of moving to the next page in the selected presented area
            }
          },
        ),
      ],
    );
  }
}

class NewPatientGeneralInfoWidget extends StatelessWidget {
  final NewPatientAltGeneralInfo state;
  const NewPatientGeneralInfoWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<NewPatientAltHandler>().formKey,
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
            items: context.read<NewPatientAltHandler>().areas,
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

Widget _spacer() => SizedBox(height: 16.0);

class NewPatientShoulderWidget extends StatelessWidget {
  final NewPatientAltShoulder state;
  const NewPatientShoulderWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppStepper(
          currentStep: context.read<NewPatientAltHandler>().currentStep,
          totalSteps: context.read<NewPatientAltHandler>().totalSteps,
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(height: 24.height),
                  _CurrentShoulderTestPage(),
                  SizedBox(height: 34.height),
                  // _Buttons(),
                  SizedBox(height: Utils.bottomDevicePadding),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
