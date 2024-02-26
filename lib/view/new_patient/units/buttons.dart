part of "../view.dart";

class _Buttons extends StatelessWidget {
  const _Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = NewPatientCubit.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppButton.outline(
          title: "Back",
          onTap: () => RouteUtils.pop(),
          titleColor: AppColors.primary,
        ),
        AppButton(
          title: "Next",
          color: AppColors.primary,
          onTap: () async {
            switch (cubit.selectedArea) {
              case 'Shoulder':
                if (cubit.formKey.currentState!.validate()) {
                  cubit.formKey.currentState!.save();
                  cubit.submitNewPatient();
                  RouteUtils.navigateTo(ShoulderView());
                }
                break;

              case 'Knee':
                RouteUtils.navigateTo(KneeView());
                break;

              // Add cases for other areas

              default:
                return;

              // case 'Ankle':
              //    AnklePage();
              // case 'Cervical':
              //    CervicalPage();
              // case 'Lumbar':
              //    LumbarPage();
              // case 'Elbow':
              //    ElbowPage();
              // default:
              //   return DefaultPage();
            }
          },
        ),
      ],
    );
  }
}
