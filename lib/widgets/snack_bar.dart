import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:flutter/material.dart';

import '../core/route_utils/route_utils.dart';
import 'app_text.dart';

void showSnackBar(
  String message, {
  bool errorMessage = false,
  duration = 5,
  Color color = AppColors.primary,
  SnackBarAction? action,
}) {
  if (message.trim().isEmpty) {
    return;
  }
  ScaffoldMessenger.of(RouteUtils.context).hideCurrentSnackBar();
  ScaffoldMessenger.of(RouteUtils.context).showSnackBar(
    SnackBar(
      backgroundColor: errorMessage ? AppColors.red : color,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0.0,
      content: AppText(
        title: message,
        color: AppColors.white,
      ),
      action: action ??
          SnackBarAction(
            label: '',
            onPressed: () {},
          ),
      duration: Duration(seconds: duration),
    ),
  );
}
