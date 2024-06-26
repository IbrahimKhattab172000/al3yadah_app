import 'package:al3yadah_app/core/handlers/new_patient_alt/handler.dart';
import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/validator.dart';
import 'package:al3yadah_app/widgets/app/app_toggle.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:al3yadah_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/cervical_test_page1.dart';
part 'widgets/cervical_test_page2.dart';
part 'widgets/cervical_test_page3.dart';
part 'widgets/cervical_test_page4.dart';

class CervicalContentView extends StatelessWidget {
  final PatientMainStateCervical state;
  const CervicalContentView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    switch (state.currentStep) {
      case 1:
        return _CervicalTestPage1();
      case 2:
        return _CervicalTestPage2();
      case 3:
        return _CervicalTestPage3();
      case 4:
        return _CervicalTestPage4();
      default:
        return SizedBox(child: AppText(title: "none"));
    }
  }
}
