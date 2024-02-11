part of "../view.dart";

class _Buttons extends StatelessWidget {
  const _Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = ShoulderCubit.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppButton.outline(
          title: "Back",
          onTap: () {
            if (!cubit.isFirst) {
              cubit.previousStep();
            } else {
              RouteUtils.pop();
            }
          },
          titleColor: AppColors.primary,
        ),
        AppButton(
          title: cubit.isLast ? "Submit" : "Next",
          color: AppColors.primary,
          onTap: () {
            if (!cubit.isLast) {
              cubit.nextStep();
            } else {
              RouteUtils.navigateTo(SuccessView());
            }
          },
        ),
      ],
    );
  }
}
