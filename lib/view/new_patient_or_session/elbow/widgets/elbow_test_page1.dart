part of '../view.dart';

class _ElbowTestPage1 extends StatelessWidget {
  const _ElbowTestPage1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          onChanged: (value) => handler.updateElbowValues(historyNote: value),
        ),
        _spacer(),
        AppText(
          title: "Palpation",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
          validator: Validator.empty,
          onChanged: (value) => handler.updateElbowValues(palpationNote: value),
        ),
        SizedBox(height: 24.height),
        AppText(
          title: "Pain",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        AppTextField(
          label: "-  Place",
          hint: "note",
          onChanged: (value) => handler.updateElbowValues(painPlaceNote: value),
          validator: Validator.empty,
        ),
        _spacer(),
        AppTextField(
          label: "-  VAS",
          hint: "note",
          onChanged: (value) => handler.updateElbowValues(painVasNote: value),
          validator: Validator.empty,
        ),
        _spacer(),
        AppText(
          title: "ROM",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        AppTextField(
          label: "-  Flexion",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) =>
              handler.updateElbowValues(romFlexionNumber: int.parse(value)),
          validator: Validator.empty,
        ),
        _spacer(),
        AppTextField(
          label: "-  Extension",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) =>
              handler.updateElbowValues(romExtensionNumber: int.parse(value)),
          validator: Validator.empty,
        ),
        _spacer(),
        AppTextField(
          label: "-  Supination",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) =>
              handler.updateElbowValues(romSupinationNumber: int.parse(value)),
          validator: Validator.empty,
        ),
        _spacer(),
        AppTextField(
          label: "-  Pronation",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) =>
              handler.updateElbowValues(romPronationNumber: int.parse(value)),
          validator: Validator.empty,
        ),
        _spacer(),
        _spacer(),
        AppTextField(
          hint: "note",
          maxLines: 4,
          onChanged: (value) => handler.updateElbowValues(romNote: value),
          validator: Validator.empty,
        ),
        _spacer(),
      ],
    );
  }
}

Widget _spacer() => SizedBox(height: 20.height);
