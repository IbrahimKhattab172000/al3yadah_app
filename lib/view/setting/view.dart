import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(child: AppText(title: "Settings")),
      ]),
    );
  }
}
