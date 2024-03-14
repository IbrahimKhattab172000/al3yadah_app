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

part 'widgets/knee_test_page1.dart';
part 'widgets/knee_test_page2.dart';
part 'widgets/knee_test_page3.dart';

class KneeContentView extends StatelessWidget {
  final PatientMainStateKnee state;
  const KneeContentView({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (state.currentStep) {
      case 1:
        return _KneeTestPage1();
      case 2:
        return _KneeTestPage2();
      case 3:
        return _KneeTestPage3();

      default:
        return SizedBox(child: AppText(title: "none"));
    }
  }
}
