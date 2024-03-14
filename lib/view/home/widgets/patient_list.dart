import 'package:al3yadah_app/core/handlers/get_patients/handler.dart';
import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/repository/patient_main.dart';
import 'package:al3yadah_app/view/home/widgets/patient_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PatientList extends StatelessWidget {
  const PatientList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetPatientsHandler(patientMainRepository: PatientMainRepository()),
      child: BlocBuilder<GetPatientsHandler, GetPatientsState>(
        builder: (context, state) {
          if (state is GetPatientsLoaded) {
            return Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: state.patients.length,
                itemBuilder: (context, index) {
                  return PatientCard(patient: state.patients[index]);
                },
                separatorBuilder: (context, index) =>
                    SizedBox(height: 12.height),
              ),
            );
          } else if (state is GetPatientsLoading) {
            return const Center(
              child: LinearProgressIndicator(
                color: AppColors.primary,
                backgroundColor: AppColors.lightGray,
                minHeight: 10,
              ),
            );
          } else if (state is GetPatientsError) {
            return Center(child: Text("Error: ${state.error}"));
          } else {
            return const SizedBox(child: Text("Other state has been called"));
          }
        },
      ),
    );
  }
}
