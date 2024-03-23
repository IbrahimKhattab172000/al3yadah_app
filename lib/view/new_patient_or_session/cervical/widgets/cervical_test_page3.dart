part of '../view.dart';

class _CervicalTestPage3 extends StatelessWidget {
  const _CervicalTestPage3({super.key});

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "Segmental mobility",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
          validator: Validator.empty,
          onChanged: (value) =>
              handler.updateCervicalValues(segmentalMobilityNote: value),
        ),
        _spacer(),
        AppText(
          title: "Muscle assessment",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
          validator: Validator.empty,
          onChanged: (value) =>
              handler.updateCervicalValues(muscleAssessmentNote: value),
        ),
        _spacer(),
        AppText(
          title: "Peripheral joint scan",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
          validator: Validator.empty,
          onChanged: (value) =>
              handler.updateCervicalValues(peripheralJointScanNote: value),
        ),
        _spacer(),
        AppText(
          title: "Special test",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        AppText(
          title: "Neurological symptoms",
          color: AppColors.black,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        Container(
          decoration: BoxDecoration(
            color: AppColors.txtFieldlableBg,
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          child: Column(
            children: [
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Distraction test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateCervicalValues(
                    distractionTest: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Spurling Compression test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateCervicalValues(
                    spurlingCompressionTest:
                        handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        _spacer(),
        AppToggle(
          optionNames: const ['+ve', '-ve', 'not done'],
          label: "Cervical quadrant test (VBI)",
          onOptionSelected: (int selectedIndex) {
            handler.updateCervicalValues(
              cervicalQuadrantTest: handler.selectedIndexInterpretation(
                selectedIndex: selectedIndex,
              ),
            );
          },
        ),
        _spacer(),
        AppToggle(
          optionNames: const ['+ve', '-ve', 'not done'],
          label: "Cervical flexion totation test ",
          onOptionSelected: (int selectedIndex) {
            handler.updateCervicalValues(
              cervicalFlexionTotationTest: handler.selectedIndexInterpretation(
                selectedIndex: selectedIndex,
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 24.height);
}
