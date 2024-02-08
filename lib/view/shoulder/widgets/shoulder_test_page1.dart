part of '../view.dart';

class _ShoulderTestPage1 extends StatelessWidget {
  const _ShoulderTestPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppToggle(
          optionNames: const ['Yes', 'No'],
          label: 'Crvical exam is free',
        ),
        SizedBox(height: 34.height),
        AppText(
          title: "History",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
        ),
        _spacer(),
        AppTextField(
          label: "Suspect diagnose",
          hint: "note",
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
        ),
        _spacer(),
        AppTextField(
          label: "-  VAS",
          hint: "note",
        ),
        _spacer(),
        AppTextField(
          label: "Palpation",
          hint: "note",
        ),
      ],
    );
  }
}

Widget _spacer() => SizedBox(height: 20.height);
