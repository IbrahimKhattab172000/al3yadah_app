import 'package:al3yadah_app/core/handlers/new_patient_alt/handler.dart';
import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/validator.dart';
import 'package:al3yadah_app/widgets/app/app_toggle.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:al3yadah_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/lumbar_test_page1.dart';
part 'widgets/lumbar_test_page2.dart';
part 'widgets/lumbar_test_page3.dart';

class LumbarContentView extends StatelessWidget {
  final PatientMainStateLumbar state;
  const LumbarContentView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    switch (state.currentStep) {
      case 1:
        return _LumbarTestPage1();
      case 2:
        return _LumbarTestPage2();
      case 3:
        return _LumbarTestPage3();

      default:
        return SizedBox(child: AppText(title: "none"));
    }
  }
}
