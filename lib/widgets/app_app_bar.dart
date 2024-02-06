import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';

import '../core/helpers/app_colors.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  AppAppBar({
    Key? key,
    this.hMargin = 0,
    this.title,
    this.actions,
    this.leading,
    this.elevation,
  }) : super(key: key);
  final double hMargin;
  final String? title;
  final List<Widget>? actions;
  final Widget? leading;
  double? elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: elevation ?? 1,
      iconTheme: IconThemeData(
        color: AppColors.secondary,
      ),
      leading: leading,
      centerTitle: true,

      // titleSpacing: title == null || title!.isEmpty || !Navigator.canPop(context) ? null : -16,
      title: AppText(
        title: title ?? '',
        fontSize: 18,
        color: AppColors.secondary,
        fontWeight: FontWeight.bold,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
