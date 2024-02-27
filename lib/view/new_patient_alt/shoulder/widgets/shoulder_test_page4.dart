part of '../view.dart';

class _ShoulderTestPage4 extends StatelessWidget {
  const _ShoulderTestPage4({super.key});

  @override
  Widget build(BuildContext context) {
    final handler = context.read<NewPatientAltHandler>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _spacer(),
        AppText(
          title: "Rc tear",
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
              // InkWell(
              //   onTap: () {
              //     cubit.toggleAllImpingementNotDone(
              //       value: !cubit.allRcTearNotDone,
              //     );
              //   },
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 18.width,
              //         height: 18.height,
              //         decoration: BoxDecoration(
              //           shape: BoxShape.circle,
              //           color: cubit.allRcTearNotDone
              //               ? AppColors.primary
              //               : AppColors.white,
              //           border: Border.all(
              //             color: AppColors.primary,
              //             width: 2,
              //           ),
              //         ),
              //       ),
              //       SizedBox(width: 12.width),
              //       AppText(
              //         title: "Determine if all of them are not done",
              //         fontSize: 16,
              //         fontWeight: FontWeight.w700,
              //         color: AppColors.txtFieldlable1,
              //       ),
              //     ],
              //   ),
              // ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Belly off",
                onOptionSelected: (int selectedIndex) {
                  handler.updateShoulderValues(
                    bellyOff: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "IRLS",
                onOptionSelected: (int selectedIndex) {
                  handler.updateShoulderValues(
                    irls: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "ERLS",
                onOptionSelected: (int selectedIndex) {
                  handler.updateShoulderValues(
                    erls: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppTextField(
                hint: "note",
                fillColor: AppColors.background,
                onChanged: (value) =>
                    handler.updateShoulderValues(rcTearNote: value),
              ),
            ],
          ),
        ),
        _spacer(),
        AppText(
          title: "Scapular stability",
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
              // InkWell(
              //   onTap: () {
              //     cubit.toggleAllInstabilityNotDone(
              //       value: !cubit.allScapularStabilityNotDone,
              //     );
              //   },
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 18.width,
              //         height: 18.height,
              //         decoration: BoxDecoration(
              //           shape: BoxShape.circle,
              //           color: cubit.allScapularStabilityNotDone
              //               ? AppColors.primary
              //               : AppColors.white,
              //           border: Border.all(
              //             color: AppColors.primary,
              //             width: 2,
              //           ),
              //         ),
              //       ),
              //       SizedBox(width: 12.width),
              //       AppText(
              //         title: "Determine if all of them are not done",
              //         fontSize: 16,
              //         fontWeight: FontWeight.w700,
              //         color: AppColors.txtFieldlable1,
              //       ),
              //     ],
              //   ),
              // ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Scapular assistance test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateShoulderValues(
                    scapularAssistanceTest: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Scapular retraction test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateShoulderValues(
                    scapularRetractionTest: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppTextField(
                hint: "note",
                fillColor: AppColors.background,
                onChanged: (value) =>
                    handler.updateShoulderValues(scapularStabilityNote: value),
              ),
            ],
          ),
        ),
        _spacer(),
        AppToggle(
          optionNames: const ['+ve', '-ve', 'not done'],
          label: "Acromio clavicular cross body adducation test",
          onOptionSelected: (int selectedIndex) {
            handler.updateShoulderValues(
              acromioTest: handler.selectedIndexInterpretation(
                selectedIndex: selectedIndex,
              ),
            );
          },
        ),
        _spacer(),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 20.height);
}
