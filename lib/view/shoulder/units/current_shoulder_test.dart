// ignore_for_file: prefer_const_constructors

part of '../view.dart';

class _CurrentShoulderTestPage extends StatelessWidget {
  const _CurrentShoulderTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = ShoulderCubit.of(context);

    switch (cubit.currentStep) {
      case 1:
        return _ShoulderTestPage1();
      case 2:
        return _ShoulderTestPage2();
      case 3:
        return _ShoulderTestPage3();
      case 4:
        return _ShoulderTestPage4();
      case 5:
        return _ShoulderTestPage5();
      default:
        return SizedBox(child: AppText(title: "none"));
    }
  }
}
