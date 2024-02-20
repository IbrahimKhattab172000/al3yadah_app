part of "../view.dart";

class _FieldsList extends StatelessWidget {
  _FieldsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = NewPatientCubit.of(context);

    return Column(
      children: [
        AppTextField(
          label: "Name",
          controller: cubit.nameController,
        ),
        _spacer(),
        AppTextField(
          label: "Age",
          controller: cubit.ageController,
          inputType: TextInputType.number,
        ),
        _spacer(),
        AppTextField(
          label: "Occupation",
          controller: cubit.occupationController,
        ),
        _spacer(),
        AppTextField(
          label: "Medical ref",
          controller: cubit.medicalRefController,
        ),
        _spacer(),
        AppTextField(
          label: "Weight",
          controller: cubit.weightController,
          inputType: TextInputType.number,
        ),
        _spacer(),
        AppTextField(
          label: "Chief Complain",
          controller: cubit.chiefComplaintController,
        ),
        _spacer(),
        AppTextField(
          label: "Course",
          controller: cubit.courseController,
        ),
        _spacer(),
        AppDropDownMenu(
          label: "Presented Area",
          hint: 'select',
          items: cubit.items,
          onChange: (value) {
            cubit.selectArea(area: value.toString());
            print(cubit.selectedArea);
          },
        ),
        _spacer(),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 16.0);
}
