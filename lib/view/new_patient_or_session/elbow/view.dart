import 'package:al3yadah_app/core/handlers/new_patient_alt/handler.dart';
import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/validator.dart';
import 'package:al3yadah_app/widgets/app/app_double_form_field.dart';
import 'package:al3yadah_app/widgets/app/app_toggle.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:al3yadah_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/elbow_test_page1.dart';
part 'widgets/elbow_test_page2.dart';

class ElbowContentView extends StatelessWidget {
  final PatientMainStateElbow state;
  const ElbowContentView({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (state.currentStep) {
      case 1:
        return _ElbowTestPage1();
      case 2:
        return _ElbowTestPage2();
      default:
        return SizedBox(child: AppText(title: "none"));
    }
  }
}
