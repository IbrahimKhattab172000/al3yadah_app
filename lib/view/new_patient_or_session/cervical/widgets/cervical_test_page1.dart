part of '../view.dart';

class _CervicalTestPage1 extends StatelessWidget {
  const _CervicalTestPage1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "No red flags",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        AppToggle(
          label: "",
          optionNames: const ['Free', 'Red flag'],
          onOptionSelected: (int selectedIndex) {
            bool isFree = selectedIndex == 0;
            String noRedFlags = isFree ? "Free" : "Red flag";
            handler.updateCervicalValues(noRedFlags: noRedFlags);
          },
        ),
        SizedBox(height: 24.height),
        AppText(
          title: "Psycologic causes",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        AppToggle(
          label: "",
          optionNames: const ['Free', 'Suspected'],
          onOptionSelected: (int selectedIndex) {
            bool isFree = selectedIndex == 0;
            String psycologicCauses = isFree ? "Free" : "Suspected";
            handler.updateCervicalValues(psycologicCauses: psycologicCauses);
          },
        ),
        SizedBox(height: 24.height),
        AppText(
          title: "History",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
          validator: Validator.empty,
          onChanged: (value) =>
              handler.updateCervicalValues(historyNote: value),
        ),
        SizedBox(height: 24.height),
        AppText(
          title: "Pain",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        _spacer(),
        AppTextField(
          label: "-  Place / dermatome",
          hint: "note",
          onChanged: (value) =>
              handler.updateCervicalValues(painPlaceOrDermatomeNote: value),
          validator: Validator.empty,
        ),
        _spacer(),
        AppTextField(
          label: "-  VAS",
          hint: "number",
          onChanged: (value) =>
              handler.updateCervicalValues(painVasNumber: int.parse(value)),
          validator: Validator.empty,
          inputType: TextInputType.number,
        ),
      ],
    );
  }
}

Widget _spacer() => SizedBox(height: 20.height);
