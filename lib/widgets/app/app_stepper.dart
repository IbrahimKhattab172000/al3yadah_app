import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/helpers/app_colors.dart';
import '../app_text.dart';

class AppStepper extends StatelessWidget {
  const AppStepper({
    Key? key,
    required this.steps,
    required this.currentStep,
  }) : super(key: key);

  final List<String> steps;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 64,
          right: 64,
          top: 16,
          child: Container(
            height: 1,
            width: double.infinity,
            color: AppColors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: steps.map((e) {
            final index = steps.indexOf(e);
            return _step(
              title: e,
              active: (currentStep - 1) >= index,
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _step({
    required bool active,
    required String title,
  }) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 28,
            width: 28,
            child: UnconstrainedBox(
              child: Icon(
                FontAwesomeIcons.check,
                color: active ? AppColors.primary : Colors.transparent,
                size: 16,
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: active ? AppColors.white : AppColors.primary,
              border: Border.all(
                color: AppColors.white,
              ),
            ),
          ),
          SizedBox(height: 12),
          FittedBox(
            child: AppText(
              title: title,
              fontSize: 14,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
