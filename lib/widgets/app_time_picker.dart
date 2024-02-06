import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/helpers/utils.dart';

class AppTimePicker extends StatefulWidget {
  const AppTimePicker({Key? key}) : super(key: key);

  static Future<TimeOfDay?> show() async {
    final result = await showModalBottomSheet(
      context: RouteUtils.context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return const AppTimePicker();
      },
    );
    return result;
  }

  @override
  State<AppTimePicker> createState() => _AppTimePickerState();
}

class _AppTimePickerState extends State<AppTimePicker> {
  final initialTime = DateTime(0, 0, 0, 0, 0);

  TimeOfDay from = const TimeOfDay(hour: 0, minute: 0);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onClosing: () {},
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Localizations(
              delegates: context.localizationDelegates,
              locale: const Locale('en'),
              child: Column(
                crossAxisAlignment: Utils.isAR
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CupertinoDatePicker(
                      initialDateTime: initialTime,
                      mode: CupertinoDatePickerMode.time,
                      use24hFormat: true,
                      onDateTimeChanged: (DateTime value) {
                        from = TimeOfDay.fromDateTime(value);
                      },
                    ),
                  ),
                  Center(
                    child: AppButton(
                      title: 'save'.tr(),
                      onTap: () {
                        Navigator.pop(
                          context,
                          from,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
