part of '../view.dart';

class _WrestFingerTestPage3 extends StatelessWidget {
  const _WrestFingerTestPage3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _spacer(),
        AppToggle(
          optionNames: const ['+ve', '-ve', 'not done'],
          label: "Finkelstein test",
          onOptionSelected: (int selectedIndex) {
            handler.updateWrestFingerValues(
              finkelsteinTest: handler.selectedIndexInterpretation(
                selectedIndex: selectedIndex,
              ),
            );
          },
        ),
        _spacer(),
        AppText(
          title: "Neuro dynamic test",
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
            children: [
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Medial nerve",
                onOptionSelected: (int selectedIndex) {
                  handler.updateWrestFingerValues(
                    medialNerve: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Ulnar nerve",
                onOptionSelected: (int selectedIndex) {
                  handler.updateWrestFingerValues(
                    ulnarNerve: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Radial nerve",
                onOptionSelected: (int selectedIndex) {
                  handler.updateWrestFingerValues(
                    radialNerve: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppTextField(
                hint: "note",
                fillColor: AppColors.background,
                onChanged: (value) => handler.updateWrestFingerValues(
                    neuroDynamictestNote: value),
                validator: Validator.empty,
              ),
            ],
          ),
        ),
        _spacer(),
      ],
    );
  }
}
