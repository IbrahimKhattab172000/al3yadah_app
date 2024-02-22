import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/view/new_patient/cubit.dart';
import 'package:al3yadah_app/view/patient_files/widget/session_card.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_dialog.dart';
import 'package:al3yadah_app/widgets/app_drop_down_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientFilesView extends StatelessWidget {
  final Patient patient;

  const PatientFilesView({Key? key, required this.patient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewPatientCubit(),
      child: BlocBuilder<NewPatientCubit, NewPatientStates>(
        builder: (context, state) {
          final cubit = NewPatientCubit.of(context);
          return Scaffold(
            appBar: AppAppBar(title: patient.name),
            body: Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: patient.sessions.length,
                        itemBuilder: (context, index) {
                          return SessionCard(
                            patient: patient,
                            index: index,
                          );
                        },
                      ),
                    ),
                    AppButton(
                      title: "Add session",
                      onTap: () => AppDialog.show(
                        title: "",
                        dismissible: true,
                        child: Column(
                          children: [
                            AppDropDownMenu(
                              label: "Presented Area",
                              hint: 'select',
                              items: cubit.items,
                              onChange: (value) {
                                cubit.selectArea(area: value.toString());
                                print(cubit.selectedArea);
                              },
                            ),
                          ],
                        ),
                      ),
                      titleColor: AppColors.white,
                    ),
                    SizedBox(height: Utils.bottomDevicePadding),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
