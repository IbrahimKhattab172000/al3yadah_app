import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class PatientFilesView extends StatelessWidget {
  const PatientFilesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: "Sara Ahmed"),
      body: Column(
        children: [
          Row(
            children: [
              AppText(
                title: "First Session 10 /10/2023",
                color: AppColors.txtFieldlable1,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
