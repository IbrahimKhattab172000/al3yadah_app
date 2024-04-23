part of '../view.dart';

class _WrestFingerTestPage1 extends StatelessWidget {
  const _WrestFingerTestPage1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "Proximal radiating pain",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        AppToggle(
          label: "",
          optionNames: const ['Yes', 'Proximal is free'],
          onOptionSelected: (int selectedIndex) {
            bool pain = selectedIndex == 0;
            String proximalRadiatingPain = pain ? "Yes" : "Proximal is free";
            handler.updateWrestFingerValues(
                proximalRadiatingPain: proximalRadiatingPain);
          },
        ),
        SizedBox(height: 24.height),
        AppText(
          title: "History",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          validator: Validator.empty,
          onChanged: (value) =>
              handler.updateWrestFingerValues(historyNote: value),
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
          label: "-  Place /  nerve distrbution",
          hint: "note",
          onChanged: (value) => handler.updateWrestFingerValues(
              painPlaceOrNerveDistrbutionNote: value),
          validator: Validator.empty,
        ),
        _spacer(),
        AppTextField(
          label: "-  VAS",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) =>
              handler.updateWrestFingerValues(vasNumber: value),
          validator: Validator.empty,
        ),
        _spacer(),
        AppText(
          title: "Palpation",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          onChanged: (value) =>
              handler.updateWrestFingerValues(palpationNote: value),
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
          onChanged: (value) => handler.updateWrestFingerValues(
              romFlexionNumber: int.parse(value)),
          validator: Validator.empty,
        ),
        _spacer(),
        AppTextField(
          label: "-  Extension",
          hint: "number",
          inputType: TextInputType.number,
          onChanged: (value) => handler.updateWrestFingerValues(
              romExtensionNumber: int.parse(value)),
          validator: Validator.empty,
        ),
        _spacer(),
        AppTextField(
          hint: "note",
          maxLines: 4,
          onChanged: (value) => handler.updateWrestFingerValues(romNote: value),
          validator: Validator.empty,
        ),
        _spacer(),
      ],
    );
  }
}

Widget _spacer() => SizedBox(height: 20.height);
