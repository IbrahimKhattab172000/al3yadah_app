part of "../view.dart";

class _Buttons extends StatelessWidget {
  const _Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppButton.outline(title: "Back"),
        AppButton(
          title: "Next",
          color: AppColors.primary,
          onTap: () {},
        ),
      ],
    );
  }
}
