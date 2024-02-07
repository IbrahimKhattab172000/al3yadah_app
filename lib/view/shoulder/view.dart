import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:flutter/material.dart';

class ShoulderView extends StatelessWidget {
  const ShoulderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: "Shoulder Test",
      ),
    );
  }
}
