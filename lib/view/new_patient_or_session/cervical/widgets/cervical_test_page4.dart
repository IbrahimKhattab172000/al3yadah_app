part of '../view.dart';

class __CervicalTestPage4 extends StatelessWidget {
  const __CervicalTestPage4({super.key});

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "Cervical muscle  strengh",
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
                label: "Cranio cervical flexion test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateCervicalValues(
                    cranioCervicalFlexionTest:
                        handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Deep neek flexors endurance test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateCervicalValues(
                    deepNeekFlexorsEnduranceTest:
                        handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
            ],
          ),
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          validator: Validator.empty,
          maxLines: 4,
          onChanged: (value) =>
              handler.updateCervicalValues(cervicalMuscleStrenghNote: value),
        ),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 24.height);
}
