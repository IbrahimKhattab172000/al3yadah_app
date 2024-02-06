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
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, items) {
                return const _PatientCard();
              },
              separatorBuilder: (context, index) => SizedBox(height: 12.height),
            ),
          ),
          SizedBox(height: 20.height),
        ],
      ),
    );
  }
}

Widget _title() {
  return AppText(
    title: "Patient files",
    color: AppColors.darkGray,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}
