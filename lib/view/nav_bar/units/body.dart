// ignore_for_file: prefer_const_constructors

part of '../view.dart';

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = NavBarCubit.of(context);
    return [
      HomeView(),
      SettingView(),
    ][cubit.currentViewIndex];
  }
}
