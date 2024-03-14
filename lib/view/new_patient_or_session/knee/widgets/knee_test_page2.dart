part of '../view.dart';

class _KneeTestPage2 extends StatelessWidget {
  const _KneeTestPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "ROM",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Flexion",
          onNoteChanged: (value) {
            handler.updateKneeValues(roomFlextionNote: value);
          },
          onNumberChanged: (value) {
            handler.updateKneeValues(roomExtensionNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Extension",
          onNoteChanged: (value) {
            handler.updateKneeValues(roonExtensionNote: value);
          },
          onNumberChanged: (value) {
            handler.updateKneeValues(roomExtensionNum: value);
          },
        ),
        _spacer(),
        AppText(
          title: "Muscle Test",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 16.height),
        AppTextField(
          hint: "note",
          onChanged: (value) => handler.updateKneeValues(muscleTestNote: value),
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
          title: "ACL",
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
                label: "Anterior drawer",
                onOptionSelected: (int selectedIndex) {
                  handler.updateKneeValues(
                    anteriorDrawer: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Lachman",
                onOptionSelected: (int selectedIndex) {
                  handler.updateKneeValues(
                    lachman: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              SizedBox(height: 16.height),
              AppTextField(
                hint: "note",
                onChanged: (value) => handler.updateKneeValues(aclNote: value),
                validator: Validator.empty,
                fillColor: AppColors.background,
              ),
              _spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: "Ligaments",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.txtFieldlable1,
                  ),
                  _spacer(),
                  AppToggle(
                    optionNames: const ['+ve', '-ve', 'not done'],
                    label: "MCL stress test",
                    onOptionSelected: (int selectedIndex) {
                      handler.updateKneeValues(
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
                      handler.updateKneeValues(
                        lclStressTest: handler.selectedIndexInterpretation(
                          selectedIndex: selectedIndex,
                        ),
                      );
                    },
                  ),
                  _spacer(),
                  AppToggle(
                    optionNames: const ['+ve', '-ve', 'not done'],
                    label: "Posterior drawer",
                    onOptionSelected: (int selectedIndex) {
                      handler.updateKneeValues(
                        posteriorDrawer: handler.selectedIndexInterpretation(
                          selectedIndex: selectedIndex,
                        ),
                      );
                    },
                  ),
                ],
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
