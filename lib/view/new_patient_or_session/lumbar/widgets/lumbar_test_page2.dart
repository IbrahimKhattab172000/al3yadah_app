part of '../view.dart';

class _LumbarTestPage2 extends StatelessWidget {
  const _LumbarTestPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "Observation / Gait assisment",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
          validator: Validator.empty,
          onChanged: (value) =>
              handler.updateLumbarValues(observationOrGaitAassisment: value),
        ),
        _spacer(),
        AppText(
          title: "Myotomal affection",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
          validator: Validator.empty,
          onChanged: (value) =>
              handler.updateLumbarValues(myotomalAffection: value),
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
          label: "- Flexion",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) =>
              handler.updateLumbarValues(romFlexionNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          label: "- Extension",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) =>
              handler.updateLumbarValues(romExtensionNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          label: "- L Side bending",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) => handler.updateLumbarValues(
              romLSideBendingNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          label: "- R Side bending",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) => handler.updateLumbarValues(
              romRSideBendingNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          label: "- L Rotation",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) =>
              handler.updateLumbarValues(romLRotationNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          label: "- R Rotation",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) =>
              handler.updateLumbarValues(romRRotationNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          maxLines: 5,
          onChanged: (value) => handler.updateLumbarValues(romNote: value),
        ),
        _spacer(),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 20.height);
}
