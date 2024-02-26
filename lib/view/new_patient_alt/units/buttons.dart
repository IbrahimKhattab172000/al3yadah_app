part of "../view.dart";

class _Buttons extends StatelessWidget {
  const _Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final shoulderCubit = ShoulderCubit.of(context);

    return BlocProvider(
      create: (context) => NewPatientCubit(),
      child: BlocBuilder<NewPatientCubit, NewPatientStates>(
        builder: (context, state) {
          final newPatientCubit = NewPatientCubit.of(context);

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppButton.outline(
                title: "Back",
                onTap: () {
                  if (!shoulderCubit.isFirst) {
                    shoulderCubit.previousStep();
                  } else {
                    RouteUtils.pop();
                  }
                },
                titleColor: AppColors.primary,
              ),
              AppButton(
                title: shoulderCubit.isLast ? "Submit" : "Next",
                color: AppColors.primary,
                onTap: () {
                  if (!shoulderCubit.isLast) {
                    shoulderCubit.nextStep();
                  } else {
                    newPatientCubit.submitNewPatient();
                    RouteUtils.navigateTo(SuccessView());
                  }
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
