part of '../view.dart';

class _KneeTestPage3 extends StatelessWidget {
  const _KneeTestPage3({super.key});

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "Menisces",
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
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Mcmuray",
                onOptionSelected: (int selectedIndex) {
                  handler.updateKneeValues(
                    mcmuray: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Apley",
                onOptionSelected: (int selectedIndex) {
                  handler.updateKneeValues(
                    apley: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Thessaly",
                onOptionSelected: (int selectedIndex) {
                  handler.updateKneeValues(
                    thessaly: handler.selectedIndexInterpretation(
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
                    handler.updateKneeValues(thessalyNote: value),
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Apprehension",
                onOptionSelected: (int selectedIndex) {
                  handler.updateKneeValues(
                    apprehension: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Noble",
                onOptionSelected: (int selectedIndex) {
                  handler.updateKneeValues(
                    noble: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Pattelar effussion",
                onOptionSelected: (int selectedIndex) {
                  handler.updateKneeValues(
                    pattelarEffussion: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          onChanged: (value) => handler.updateKneeValues(meniscesNote: value),
        ),
        _spacer(),
        AppTextField(
          label: "Treatment",
          hint: "note",
          onChanged: (value) => handler.updateKneeValues(treatments: value),
        ),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 24.height);
}
