import 'package:al3yadah_app/core/helpers/validator.dart';
import 'package:flutter/material.dart';
import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:al3yadah_app/widgets/app_text_field.dart';

class AppDoubleFormField extends StatelessWidget {
  final String? label;
  final Function(int) onNumberChanged;
  final Function(String) onNoteChanged;

  AppDoubleFormField({
    Key? key,
    this.label,
    required this.onNumberChanged,
    required this.onNoteChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: EdgeInsets.only(bottom: 8.height),
            child: AppText(
              title: label!,
              color: AppColors.txtFieldlable1,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: AppTextField(
                hint: "number",
                inputType: TextInputType.number,
                onChanged: (value) => onNumberChanged(int.parse(value)),
                validator: Validator.empty,
              ),
            ),
            SizedBox(width: 8.width),
            Expanded(
              flex: 2,
              child: AppTextField(
                hint: "note",
                onChanged: (value) => onNoteChanged(value),
                validator: Validator.empty,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
