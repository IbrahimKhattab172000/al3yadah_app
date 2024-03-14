part of '../view.dart';

class _KneeTestPage1 extends StatelessWidget {
  const _KneeTestPage1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppToggle(
          optionNames: const ['Yes', 'No'],
          label: 'Hip is free',
          onOptionSelected: (int selectedIndex) {
            bool hipFree = selectedIndex == 0;
            handler.updateKneeValues(freeHip: hipFree);
            print('Selected index: $selectedIndex' + "free? $hipFree");
          },
        ),
        SizedBox(height: 24.height),
        AppToggle(
          optionNames: const ['Yes', 'No'],
          label: 'Lumbar is free',
          onOptionSelected: (int selectedIndex) {
            bool lumbarFree = selectedIndex == 0;
            handler.updateKneeValues(freeLumber: lumbarFree);
            print('Selected index: $selectedIndex' + "free? $lumbarFree");
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
          validator: Validator.empty,
          onChanged: (value) => handler.updateKneeValues(historyNote: value),
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
          onChanged: (value) => handler.updateKneeValues(painPlace: value),
          validator: Validator.empty,
        ),
        _spacer(),
        AppTextField(
          label: "-  VAS",
          hint: "note",
          onChanged: (value) => handler.updateKneeValues(painVas: value),
          validator: Validator.empty,
        ),
        _spacer(),
        AppTextField(
          label: "Palpation",
          hint: "note",
          onChanged: (value) => handler.updateKneeValues(painPalpation: value),
          validator: Validator.empty,
        ),
      ],
    );
  }
}

Widget _spacer() => SizedBox(height: 20.height);
