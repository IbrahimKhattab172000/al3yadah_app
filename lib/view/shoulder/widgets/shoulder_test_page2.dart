part of '../view.dart';

class _ShoulderTestPage2 extends StatelessWidget {
  const _ShoulderTestPage2({super.key});

  @override
  Widget build(BuildContext context) {
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
        AppDoubleFormField(
          label: "- Flexion",
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Extension",
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- ABD",
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Add",
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- ER",
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- ER",
        ),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 20.height);
}
