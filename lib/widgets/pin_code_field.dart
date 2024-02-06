import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeField extends StatelessWidget {
  final void Function(String?)? onSave;
  final void Function(String) onChanged;

  PinCodeField({this.onSave, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.width),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: PinCodeTextField(
          key: UniqueKey(),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'empty_field'.tr();
            } else if (value.length != 6) {
              return "otp_code_validation".tr();
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.disabled,
          cursorColor: AppColors.primary,
          autoDisposeControllers: true,
          autoDismissKeyboard: true,
          enablePinAutofill: true,
          keyboardType: TextInputType.number,
          animationType: AnimationType.fade,
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.secondary,
          ),
          pastedTextStyle: const TextStyle(color: AppColors.secondary),
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            selectedColor: AppColors.secondary,
            borderRadius: BorderRadius.circular(12),
            activeColor: AppColors.secondary,
            inactiveColor: AppColors.primary,
            fieldWidth: 64.width,
            fieldHeight: 64.height,
            activeFillColor: AppColors.fourth.withOpacity(0.5),
            inactiveFillColor: AppColors.fourth.withOpacity(0.5),
            selectedFillColor: AppColors.fourth.withOpacity(0.5),
            selectedBorderWidth: 2,
            disabledBorderWidth: 1,
            inactiveBorderWidth: 1,
            activeBorderWidth: 2,
            errorBorderWidth: 1,
            borderWidth: 1,
          ),
          enableActiveFill: true,
          appContext: context,
          length: 4,
          onSaved: onSave,
          onChanged: onChanged,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          errorTextSpace: 30,
        ),
      ),
    );
  }
}
