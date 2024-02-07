// ignore_for_file: prefer_const_constructors

import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_drop_down_menu.dart';
import 'package:al3yadah_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

part "units/fileds_list.dart";
part "units/buttons.dart";

class NewPatientView extends StatelessWidget {
  const NewPatientView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "New patient",
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
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
  }
}
