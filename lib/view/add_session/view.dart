import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_dialog.dart';
import 'package:flutter/material.dart';

class AddSessionView extends StatelessWidget {
  const AddSessionView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: "Add session",
      onTap: () => AppDialog.show(
        title: "Add session",
        dismissible: true,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              // AppDropDownMenu(
              //   label: "Presented Area",
              //   hint: 'select',
              //   items: cubit.areas,
              //   onChange: (value) {
              //     cubit.selectArea(area: value.toString());
              //     print(cubit.selectedArea);
              //   },
              //   fillColor: AppColors.primary.withOpacity(0.1),
              // ),
              SizedBox(height: 50.height),
              AppButton(
                title: "Next",
                color: AppColors.primary,
                onTap: () {
                  //   switch (cubit.selectedArea) {
                  //     case 'Shoulder':
                  //     // RouteUtils.navigateTo(ShoulderView());
                  //     case 'Knee':
                  //       RouteUtils.navigateTo(KneeView());

                  //     // case 'Ankle':
                  //     //    AnklePage();
                  //     // case 'Cervical':
                  //     //    CervicalPage();
                  //     // case 'Lumbar':
                  //     //    LumbarPage();
                  //     // case 'Elbow':
                  //     //    ElbowPage();
                  //     // default:
                  //     //   return DefaultPage();
                  //   }
                },
              ),
            ],
          ),
        ),
      ),
      titleColor: AppColors.white,
    );
  }
}
