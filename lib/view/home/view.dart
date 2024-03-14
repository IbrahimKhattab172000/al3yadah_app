import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/home/widgets/patient_list.dart';
import 'package:al3yadah_app/view/search/view.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:al3yadah_app/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

part 'units/search_field.dart';
part 'units/title_with_patient_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: Utils.topDevicePadding + 40,
        ),
        child: Column(
          children: [
            const _SearchField(),
            SizedBox(height: 40.height),
            const _TitleWithPatientList(),
          ],
        ),
      ),
    );
  }
}
