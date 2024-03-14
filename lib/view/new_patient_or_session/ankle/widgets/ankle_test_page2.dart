part of '../view.dart';

class _AnkleTestPage2 extends StatelessWidget {
  const _AnkleTestPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "Special test",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        AppText(
          title: "Anterior Talo fibular ligament test",
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
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Anterior drawer",
                onOptionSelected: (int selectedIndex) {
                  handler.updateAnkleValues(
                    anteriorDrawer: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Reverse anterolateral drawer",
                onOptionSelected: (int selectedIndex) {
                  handler.updateAnkleValues(
                    reverseAnterolateralDrawer:
                        handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Antero lateral talar palpation",
                onOptionSelected: (int selectedIndex) {
                  handler.updateAnkleValues(
                    anteroLateralTalarPalpation:
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
        AppText(
          title: " Calcaneo fibular ligament test",
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
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Talar tilt",
                onOptionSelected: (int selectedIndex) {
                  handler.updateAnkleValues(
                    talarTilt: handler.selectedIndexInterpretation(
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
          label: "Performance test",
          onOptionSelected: (int selectedIndex) {
            handler.updateAnkleValues(
              performanceTest: handler.selectedIndexInterpretation(
                selectedIndex: selectedIndex,
              ),
            );
          },
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          onChanged: (value) =>
              handler.updateAnkleValues(performanceTestNote: value),
          validator: Validator.empty,
        ),
        _spacer(),
        AppTextField(
          label: "Treatment",
          hint: "note",
          onChanged: (value) => handler.updateAnkleValues(treatmentNote: value),
          validator: Validator.empty,
        ),
        _spacer(),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 20.height);
}
