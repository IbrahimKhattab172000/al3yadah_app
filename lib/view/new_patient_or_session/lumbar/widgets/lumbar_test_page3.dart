part of '../view.dart';

class _LumbarTestPage3 extends StatelessWidget {
  const _LumbarTestPage3({super.key});

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
              handler.updateLumbarValues(segmentalMobility: value),
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
              handler.updateLumbarValues(muscleAssisment: value),
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
              handler.updateLumbarValues(pripheralJointScan: value),
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
          title: "Neuro dynamic test",
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
                label: "Straight leg raising test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateLumbarValues(
                    straightLegRaisingTest: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Slump test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateLumbarValues(
                    slumpTest: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Femord nerve traction test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateLumbarValues(
                    femordNerveTractionTest:
                        handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppTextField(
                hint: "note",
                onChanged: (value) =>
                    handler.updateLumbarValues(neuroDynamicTestNote: value),
                validator: Validator.empty,
                fillColor: AppColors.white,
              ),
            ],
          ),
        ),
        _spacer(),
        AppText(
          title: "Lumber instability",
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
                label: "Passive lumber extension test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateLumbarValues(
                    passiveLumberExtensionTest:
                        handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Prone segmental instability test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateLumbarValues(
                    proneSegmentalInstabilityTest:
                        handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppTextField(
                hint: "note",
                onChanged: (value) =>
                    handler.updateLumbarValues(lumberInstabilityNote: value),
                validator: Validator.empty,
                fillColor: AppColors.white,
              ),
            ],
          ),
        ),
        _spacer(),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 24.height);
}
