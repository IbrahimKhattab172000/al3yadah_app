import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/shoulder/cubit.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import 'package:al3yadah_app/widgets/app/app_stepper.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'units/buttons.dart';
part 'widgets/shoulder_test_page1.dart';
part 'widgets/shoulder_test_page2.dart';
part 'widgets/shoulder_test_page3.dart';
part 'widgets/shoulder_test_page4.dart';
part 'widgets/shoulder_test_page5.dart';

part 'units/current_shoulder_test.dart';

class ShoulderView extends StatelessWidget {
  ShoulderView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShoulderCubit(),
      child: BlocBuilder<ShoulderCubit, ShoulderStates>(
        builder: (context, state) {
          final cubit = ShoulderCubit.of(context);

          return Scaffold(
            appBar: AppAppBar(
              title: "Shoulder Test",
              elevation: 0,
            ),
            body: Column(
              children: [
                AppStepper(
                  currentStep: cubit.currentStep,
                  totalSteps: cubit.totalSteps,
                ),
                // ignore: prefer_const_constructors
                _CurrentShoulderTestPage(),
                // ignore: prefer_const_constructors
                _Buttons(),
              ],
            ),
          );
        },
      ),
    );
  }
}
