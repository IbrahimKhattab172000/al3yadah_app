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

part 'widgets/shoulder_test_page1.dart';
part 'widgets/shoulder_test_page2.dart';
part 'widgets/shoulder_test_page3.dart';
part 'widgets/shoulder_test_page4.dart';
part 'widgets/shoulder_test_page5.dart';

class ShoulderContentView extends StatelessWidget {
  final PatientMainStateShoulder state;
  const ShoulderContentView({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (state.currentStep) {
      case 1:
        return ShoulderTestPage1();
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
