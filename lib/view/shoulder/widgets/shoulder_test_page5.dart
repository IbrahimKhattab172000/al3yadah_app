// part of '../view.dart';

// class _ShoulderTestPage5 extends StatelessWidget {
//   const _ShoulderTestPage5({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ShoulderCubit, ShoulderStates>(
//       builder: (context, state) {
//         final cubit = ShoulderCubit.of(context);
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _spacer(),
//             AppToggle(
//               optionNames: const ['+ve', '-ve', 'not done'],
//               label: "O’Brien test",
//             ),
//             _spacer(),
//             AppToggle(
//               optionNames: const ['+ve', '-ve', 'not done'],
//               label: "Passive distraction test",
//             ),
//             _spacer(),
//             AppToggle(
//               optionNames: const ['+ve', '-ve', 'not done'],
//               label: "Modified labral shear test",
//             ),
//             _spacer(),
//             AppTextField(
//               hint: "note",
//             ),
//             _spacer(),
//             AppTextField(
//               hint: "note",
//               label: "Treatments",
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
