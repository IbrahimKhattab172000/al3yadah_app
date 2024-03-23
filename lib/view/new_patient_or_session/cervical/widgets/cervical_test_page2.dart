part of '../view.dart';

class __CervicalTestPage2 extends StatelessWidget {
  const __CervicalTestPage2({super.key});

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
        AppTextField(
          label: "- Flexion",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) =>
              handler.updateCervicalValues(romFlexionNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          label: "- Extension",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) => handler.updateCervicalValues(
              romExtensionNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          label: "- L Side bending",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) => handler.updateCervicalValues(
              romLSideBendingNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          label: "- R Side bending",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) => handler.updateCervicalValues(
              romRSideBendingNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          label: "- L Rotation",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) => handler.updateCervicalValues(
              romLRotationNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          label: "- R Rotation",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) => handler.updateCervicalValues(
              romRRotationNumber: int.parse(value)),
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          maxLines: 5,
          onChanged: (value) => handler.updateCervicalValues(romNote: value),
        ),
        _spacer(),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 20.height);
}
