part of "../view.dart";

class _FieldsList extends StatelessWidget {
  List<String> items = [
    'Shoulder',
    'Knee',
    'Ankle',
    'Cervicle',
    'Lumber',
    'Elbow'
  ];

  _FieldsList({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = NewPatientCubit.of(context);

    return Column(
      children: [
        AppTextField(
          fillColor: AppColors.primary.withOpacity(0.1),
          label: "Name",
        ),
        _spacer(),
        AppTextField(
          fillColor: AppColors.primary.withOpacity(0.1),
          label: "Age",
        ),
        _spacer(),
        AppTextField(
          fillColor: AppColors.primary.withOpacity(0.1),
          label: "Occupation",
        ),
        _spacer(),
        AppTextField(
          fillColor: AppColors.primary.withOpacity(0.1),
          label: "Medical ref",
        ),
        _spacer(),
        AppTextField(
          fillColor: AppColors.primary.withOpacity(0.1),
          label: "Weight",
        ),
        _spacer(),
        AppTextField(
          fillColor: AppColors.primary.withOpacity(0.1),
          label: "Chief Complain",
        ),
        _spacer(),
        AppTextField(
          fillColor: AppColors.primary.withOpacity(0.1),
          label: "Course",
        ),
        _spacer(),
        AppDropDownMenu(
          fillColor: AppColors.primary.withOpacity(0.1),
          label: "Presented Area",
          hint: 'select',
          items: items,
          onChange: (value) {
            cubit.selectArea(area: value.toString());
            print(cubit.selectedArea);
          },
        ),
      ],
    );
  }
}

Widget _spacer() => SizedBox(height: 16.height);
