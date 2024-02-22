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
            await cubit.gatherFirstPageDataAndAdvance();
            print(cubit.patient);

            switch (cubit.selectedArea) {
              case 'Shoulder':
                RouteUtils.navigateTo(ShoulderView());
              case 'Knee':
                RouteUtils.navigateTo(KneeView());

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
