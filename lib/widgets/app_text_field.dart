import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../core/helpers/app_colors.dart';
import '../core/helpers/utils.dart';

class AppTextField extends StatefulWidget {
  AppTextField({
    super.key,
    this.hint,
    this.validator,
    this.textInputAction = TextInputAction.next,
    this.inputType = TextInputType.text,
    this.onTap,
    this.trailing,
    this.leading,
    this.label,
    this.maxLines = 1,
    this.borderColor = Colors.transparent,
    this.fillColor,
    this.onSaved,
    this.onChanged,
    this.controller,
    this.secure = false,
    this.hintColor,
  });

  final String? hint;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputAction textInputAction;
  final TextInputType inputType;
  final VoidCallback? onTap;
  final Widget? trailing;
  final Widget? leading;
  final String? label;
  final int maxLines;
  final Color borderColor;
  Color? fillColor;
  final bool secure;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final Color? hintColor;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Padding(
            padding: EdgeInsets.only(bottom: 8.height),
            child: AppText(
              title: widget.label!,
              color: AppColors.txtFieldlable1,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        InkWell(
          radius: _radius,
          onTap: widget.onTap != null
              ? () {
                  Utils.dismissKeyboard();
                  widget.onTap!();
                }
              : null,
          borderRadius: BorderRadius.circular(_radius),
          child: AbsorbPointer(
            absorbing: widget.onTap != null,
            child: TextFormField(
              controller: widget.controller,
              cursorColor: AppColors.primary,
              cursorHeight: 20,
              validator: widget.validator,
              onChanged: widget.onChanged,
              textInputAction: TextInputAction.done,
              keyboardType: widget.inputType,
              maxLines: widget.maxLines,
              onSaved: widget.onSaved,
              obscureText: widget.secure,
              decoration: InputDecoration(
                hintText: widget.hint ?? '',
                fillColor:
                    widget.fillColor ?? AppColors.primary.withOpacity(0.1),
                filled: true,
                hintStyle: TextStyle(
                  color: widget.hintColor ?? AppColors.gray,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: widget.trailing,
                prefixIcon: widget.leading,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 12.width, vertical: 8.height),
                border: _border(widget.borderColor),
                enabledBorder: _border(widget.borderColor),
                focusedBorder: _border(AppColors.primary, width: 2),
                errorBorder: _border(AppColors.red),
                focusedErrorBorder: _border(AppColors.primary, width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }

  InputBorder _border(Color color, {double width = 2}) {
    return UnderlineInputBorder(
      // borderRadius: BorderRadius.circular(_radius),
      borderSide: BorderSide(
        color: color,
        width: width,
      ),
    );
  }

  double get _radius => widget.maxLines > 1 ? 16 : 16;
}
