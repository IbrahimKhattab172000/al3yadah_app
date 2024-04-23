part of '../view.dart';

class _WrestFingerTestPage2 extends StatelessWidget {
  const _WrestFingerTestPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "Muscle test",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          onChanged: (value) =>
              handler.updateWrestFingerValues(muscleTestNote: value),
          validator: Validator.empty,
        ),
        _spacer(),
        AppText(
          title: "Thumb is free?",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        AppToggle(
          label: "",
          optionNames: const ['Yes', 'Affected'],
          onOptionSelected: (int selectedIndex) {
            bool thumbState = selectedIndex == 0;
            String thumbIsFree = thumbState ? "Yes" : "Affected";
            handler.updateWrestFingerValues(thumbIsFree: thumbIsFree);
          },
        ),
        _spacer(),
        AppText(
          title: "Finger is free?",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        AppToggle(
          label: "",
          optionNames: const ['Yes', 'Affected'],
          onOptionSelected: (int selectedIndex) {
            bool fingerState = selectedIndex == 0;
            String fingersIsFree = fingerState ? "Yes" : "Affected";
            handler.updateWrestFingerValues(fingersIsFree: fingersIsFree);
          },
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
          title: "CTS",
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
                label: "Phalen test",
                onOptionSelected: (int selectedIndex) {
                  handler.updateWrestFingerValues(
                    ctsPhalenTest: handler.selectedIndexInterpretation(
                      selectedIndex: selectedIndex,
                    ),
                  );
                },
              ),
              _spacer(),
              AppToggle(
                optionNames: const ['+ve', '-ve', 'not done'],
                label: "Tinnel sign",
                onOptionSelected: (int selectedIndex) {
                  handler.updateWrestFingerValues(
                    ctsTinnelSign: handler.selectedIndexInterpretation(
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
                    handler.updateWrestFingerValues(ctsNote: value),
                validator: Validator.empty,
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
