import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppToggle extends StatefulWidget {
  final List<String> optionNames;
  final String label;

  AppToggle({
    required this.optionNames,
    required this.label,
  });

  @override
  _AppToggleState createState() => _AppToggleState();
}

class _AppToggleState extends State<AppToggle> {
  int? selectedOptionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: widget.label,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: AppColors.txtFieldlable1,
        ),
        SizedBox(height: 18.height),
        Row(
          mainAxisAlignment: widget.optionNames.length == 2
              ? MainAxisAlignment.start
              : MainAxisAlignment.spaceBetween,
          children: List.generate(widget.optionNames.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 30),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectedOptionIndex = index;
                  });
                },
                child: Row(
                  children: [
                    Container(
                      width: 18.width,
                      height: 18.height,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedOptionIndex == index
                            ? AppColors.primary
                            : AppColors.white,
                        border: Border.all(
                          color: AppColors.primary,
                          width: 2,
                        ),
                      ),
                    ),
                    SizedBox(width: 12.width),
                    AppText(
                      title: widget.optionNames[index],
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: selectedOptionIndex == index
                          ? AppColors.primary
                          : AppColors.txtFieldlable1,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
