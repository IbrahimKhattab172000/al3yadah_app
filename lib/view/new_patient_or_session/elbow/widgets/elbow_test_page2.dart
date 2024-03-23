part of '../view.dart';

class _ElbowTestPage2 extends StatelessWidget {
  const _ElbowTestPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "Muscle assessment",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          onChanged: (value) =>
              handler.updateElbowValues(muscleAssessmentNote: value),
          validator: Validator.empty,
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
          title: "Ligaments",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.txtFieldlable1,
        ),
        SizedBox(height: 16.height),
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
                label: "MCL stress test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateElbowValues(
                    mclStressTest: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "LCL stress test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateElbowValues(
                    lclStressTest: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        _spacer(),
        _spacer(),
        AppText(
          title: "Ligaments",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.txtFieldlable1,
        ),
        _spacer(),
        Container(
          decoration: BoxDecoration(
            color: AppColors.txtFieldlableBg,
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Cozen’s test (resistance)",
                onOptionSelected: (int selectedIndex) {
                  handler.updateElbowValues(
                    cozensTestOrResistance: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Mill’s test (Passive stretch)",
                onOptionSelected: (int selectedIndex) {
                  handler.updateElbowValues(
                    millsTestOrPassiveStretch:
                        handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Maudsley’s test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateElbowValues(
                    maudsleysTest: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        _spacer(),
        _spacer(),
        AppText(
          title: "Cubital tunnel syndrome",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.txtFieldlable1,
        ),
        _spacer(),
        Container(
          decoration: BoxDecoration(
            color: AppColors.txtFieldlableBg,
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Tinnel sign",
                onOptionSelected: (int selectedIndex) {
                  handler.updateElbowValues(
                    tinnelSign: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Ulnar nerve compression test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateElbowValues(
                    ulnarNerveCompressionTest:
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
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 20.height);
}
