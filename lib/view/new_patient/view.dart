// ignore_for_file: prefer_const_constructors

import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/knee/view.dart';
import 'package:al3yadah_app/view/new_patient/cubit.dart';
import 'package:al3yadah_app/view/shoulder/view.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_drop_down_menu.dart';
import 'package:al3yadah_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "units/fileds_list.dart";
part "units/buttons.dart";

class NewPatientView extends StatelessWidget {
  const NewPatientView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewPatientCubit(),
      child: BlocBuilder<NewPatientCubit, NewPatientStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppAppBar(
              title: "New patient",
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    _FieldsList(),
                    SizedBox(height: 40.height),
                    _Buttons(),
                    SizedBox(height: Utils.bottomDevicePadding),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
