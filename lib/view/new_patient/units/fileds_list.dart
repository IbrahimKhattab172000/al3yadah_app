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
          label: "Name",
        ),
        _spacer(),
        AppTextField(
          label: "Age",
        ),
        _spacer(),
        AppTextField(
          label: "Occupation",
        ),
        _spacer(),
        AppTextField(
          label: "Medical ref",
        ),
        _spacer(),
        AppTextField(
          label: "Weight",
        ),
        _spacer(),
        AppTextField(
          label: "Chief Complain",
        ),
        _spacer(),
        AppTextField(
          label: "Course",
        ),
        _spacer(),
        AppDropDownMenu(
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
