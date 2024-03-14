import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppDataShowCard extends StatelessWidget {
  final String title;
  final dynamic value;
  const AppDataShowCard({
    super.key,
    required this.title,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              title: title,
              color: AppColors.primary,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 5),
            AppText(
              title: value.toString(),
              color: AppColors.txtFieldlable2,
              fontSize: 14,
            ),
          ],
        ),
      ),
    );
  }
}
