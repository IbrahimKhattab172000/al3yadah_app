part of '../view.dart';

class _TitleWithPatientList extends StatelessWidget {
  const _TitleWithPatientList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(),
          SizedBox(height: 20.height),
          PatientList(),
          SizedBox(height: 20.height),
        ],
      ),
    );
  }
}

Widget _title() {
  return AppText(
    title: "Patients",
    color: AppColors.darkGray,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    textAlign: TextAlign.center,
  );
}
