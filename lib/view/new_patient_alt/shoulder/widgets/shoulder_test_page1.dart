part of '../view.dart';

class ShoulderTestPage1 extends StatelessWidget {
  final NewPatientAltShoulder state;
  const ShoulderTestPage1({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppToggle(
          optionNames: const ['Yes', 'No'],
          label: 'Cervical exam is free',
          onOptionSelected: (int selectedIndex) {
            bool cervicalFree = selectedIndex == 0;
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(cervicalFree: cervicalFree);
            print('Selected index: $selectedIndex' + "free? $cervicalFree");
          },
        ),
        SizedBox(height: 34.height),
        AppText(
          title: "History",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
          onChanged: (value) => context
              .read<NewPatientAltHandler>()
              .updateShoulderValues(history: value),
        ),
        _spacer(),
        AppTextField(
          label: "Suspect diagnose",
          hint: "note",
          onChanged: (value) => context
              .read<NewPatientAltHandler>()
              .updateShoulderValues(suspectDiagnose: value),
        ),
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
          onChanged: (value) => context
              .read<NewPatientAltHandler>()
              .updateShoulderValues(place: value),
        ),
        _spacer(),
        AppTextField(
          label: "-  VAS",
          hint: "note",
          onChanged: (value) => context
              .read<NewPatientAltHandler>()
              .updateShoulderValues(vas: value),
        ),
        _spacer(),
        AppTextField(
          label: "Palpation",
          hint: "note",
          onChanged: (value) => context
              .read<NewPatientAltHandler>()
              .updateShoulderValues(palpation: value),
        ),
      ],
    );
  }
}

Widget _spacer() => SizedBox(height: 20.height);
