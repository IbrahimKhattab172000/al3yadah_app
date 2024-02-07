// ignore_for_file: sort_child_properties_last

import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import 'app_loading_indicator.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    this.color = AppColors.primary,
    this.titleColor = AppColors.white,
    this.onTap,
    this.margin = EdgeInsets.zero,
    this.padding,
    this.height,
    this.titleFontSize = 16,
    this.isLoading = false,
    this.linearColor = false,
  });

  final String title;
  final Color color;
  final Color titleColor;
  final VoidCallback? onTap;
  final EdgeInsets margin;
  final EdgeInsets? padding;
  final double? height;
  final double titleFontSize;
  final bool isLoading;
  final bool linearColor;

  double get _radius => 16;

  factory AppButton.outline({
    required String title,
    Color borderColor = AppColors.primary,
    Color titleColor = AppColors.black,
    VoidCallback? onTap,
    bool isLoading = false,
    Axis constrainedAxis = Axis.vertical,
  }) {
    return _OutlineAppButton(
      title: title,
      onTap: onTap,
      color: borderColor,
      titleColor: titleColor,
      isLoading: isLoading,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: isLoading
          ? const AppLoadingIndicator()
          : InkWell(
              onTap: () {
                if (onTap != null) {
                  onTap!();
                  Utils.dismissKeyboard();
                }
              },
              radius: _radius,
              borderRadius: BorderRadius.circular(_radius),
              child: Container(
                height: height ?? 56.height,
                padding: padding ?? EdgeInsets.symmetric(horizontal: 48.width),
                alignment: Alignment.center,
                child: AppText(
                  title: title,
                  color: titleColor,
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.bold,
                ),
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(_radius),
                  color: onTap == null ? AppColors.lightGray : color,
                  gradient: linearColor
                      ? const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColors.primary,
                            AppColors.primary,
                          ],
                        )
                      : null,
                ),
              ),
            ),
    );
  }
}

class _OutlineAppButton extends AppButton {
  _OutlineAppButton({
    required super.title,
    super.onTap,
    super.color = AppColors.primary,
    super.titleColor = AppColors.secondary,
    required super.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: isLoading
          ? const AppLoadingIndicator()
          : InkWell(
              onTap: () {
                if (onTap != null) {
                  onTap!();
                  Utils.dismissKeyboard();
                }
              },
              radius: _radius,
              borderRadius: BorderRadius.circular(_radius),
              child: Container(
                height: height ?? 56.height,
                alignment: Alignment.center,
                padding: padding ?? EdgeInsets.symmetric(horizontal: 48.width),
                child: AppText(
                  title: title,
                  color: onTap == null ? AppColors.primary : titleColor,
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.w600,
                ),
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(_radius),
                    color: AppColors.white,
                    border: Border.all(
                      color: onTap == null ? AppColors.primary : color,
                      width: 3,
                    )),
              ),
            ),
    );
  }
}
