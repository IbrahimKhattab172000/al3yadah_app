// part of "../view.dart";

// class _FieldsList extends StatelessWidget {
//   _FieldsList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final cubit = NewPatientCubit.of(context);

//     return Form(
//       key: cubit.formKey,
//       child: Column(
//         children: [
//           AppTextField(
//               label: "Name",
//               validator: Validator.name,
//               onSaved: (value) => cubit.name = value),
//           _spacer(),
//           AppTextField(
//             label: "Age",
//             inputType: TextInputType.number,
//             validator: Validator.empty,
//             onSaved: (value) => cubit.age = int.tryParse(value!),
//           ),
//           _spacer(),
//           AppTextField(
//             label: "Occupation",
//             validator: Validator.empty,
//             onSaved: (value) => cubit.occupation = value,
//           ),
//           _spacer(),
//           AppTextField(
//             label: "Medical ref",
//             validator: Validator.empty,
//             onSaved: (value) => cubit.medicalRef = value,
//           ),
//           _spacer(),
//           AppTextField(
//             label: "Weight",
//             inputType: TextInputType.number,
//             validator: Validator.empty,
//             onSaved: (value) => cubit.weight = int.tryParse(value!),
//           ),
//           _spacer(),
//           AppTextField(
//             label: "Chief Complain",
//             validator: Validator.empty,
//             onSaved: (value) => cubit.chiefComplaint = value,
//           ),
//           _spacer(),
//           AppTextField(
//             label: "Course",
//             validator: Validator.empty,
//             onSaved: (value) {
//               cubit.course = value;
//               print(cubit.course);
//             },
//           ),
//           _spacer(),
//           AppDropDownMenu(
//             label: "Presented Area",
//             hint: 'select',
//             items: cubit.areas,
//             onChange: (value) {
//               cubit.selectArea(area: value);
//               print(cubit.selectedArea);
//             },
//           ),
//           _spacer(),
//         ],
//       ),
//     );
//   }

//   Widget _spacer() => SizedBox(height: 16.0);
// }
