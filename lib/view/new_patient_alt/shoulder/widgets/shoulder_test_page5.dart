part of '../view.dart';

class _ShoulderTestPage5 extends StatelessWidget {
  const _ShoulderTestPage5({super.key});

  @override
  Widget build(BuildContext context) {
    final handler = context.read<NewPatientAltHandler>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _spacer(),
        AppToggle(
          optionNames: const ['+ve', '-ve', 'not done'],
          label: "O’Brien test",
          onOptionSelected: (int selectedIndex) {
            handler.updateShoulderValues(
              obrienTest: handler.selectedIndexInterpretation(
                selectedIndex: selectedIndex,
              ),
            );
          },
        ),
        _spacer(),
        AppToggle(
          optionNames: const ['+ve', '-ve', 'not done'],
          label: "Passive distraction test",
          onOptionSelected: (int selectedIndex) {
            handler.updateShoulderValues(
              passiveTest: handler.selectedIndexInterpretation(
                selectedIndex: selectedIndex,
              ),
            );
          },
        ),
        _spacer(),
        AppToggle(
          optionNames: const ['+ve', '-ve', 'not done'],
          label: "Modified labral shear test",
          onOptionSelected: (int selectedIndex) {
            handler.updateShoulderValues(
              modifiedTest: handler.selectedIndexInterpretation(
                selectedIndex: selectedIndex,
              ),
            );
          },
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          onChanged: (value) =>
              handler.updateShoulderValues(obrienTestNote: value),
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          label: "Treatments",
          onChanged: (value) =>
              handler.updateShoulderValues(treatmentNote: value),
        ),
      ],
    );
  }
}
