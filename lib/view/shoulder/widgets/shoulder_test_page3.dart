// part of '../view.dart';

// class _ShoulderTestPage3 extends StatelessWidget {
//   const _ShoulderTestPage3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ShoulderCubit, ShoulderStates>(
//       builder: (context, state) {
//         final cubit = ShoulderCubit.of(context);
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AppText(
//               title: "Special test",
//               color: AppColors.primary,
//               fontSize: 20,
//               fontWeight: FontWeight.w700,
//             ),
//             _spacer(),
//             AppText(
//               title: "Impingement",
//               fontSize: 16,
//               fontWeight: FontWeight.w700,
//               color: AppColors.txtFieldlable1,
//             ),
//             SizedBox(height: 16.height),
//             Container(
//               decoration: BoxDecoration(
//                 color: AppColors.txtFieldlableBg,
//                 borderRadius: BorderRadius.circular(6),
//               ),
//               padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       cubit.toggleAllImpingementNotDone(
//                         value: !cubit.allImpingementNotDone,
//                       );
//                     },
//                     child: Row(
//                       children: [
//                         Container(
//                           width: 18.width,
//                           height: 18.height,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: cubit.allImpingementNotDone
//                                 ? AppColors.primary
//                                 : AppColors.white,
//                             border: Border.all(
//                               color: AppColors.primary,
//                               width: 2,
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 12.width),
//                         AppText(
//                           title: "Determine if all of them are not done",
//                           fontSize: 16,
//                           fontWeight: FontWeight.w700,
//                           color: AppColors.txtFieldlable1,
//                         ),
//                       ],
//                     ),
//                   ),
//                   _spacer(),
//                   AppToggle(
//                     optionNames: const ['+ve', '-ve', 'not done'],
//                     label: "Hawkins test",
//                   ),
//                   _spacer(),
//                   AppToggle(
//                     optionNames: const ['+ve', '-ve', 'not done'],
//                     label: "Neer test",
//                   ),
//                   _spacer(),
//                   AppToggle(
//                     optionNames: const ['+ve', '-ve', 'not done'],
//                     label: "Posterior internal impingement",
//                   ),
//                   _spacer(),
//                   AppTextField(
//                     hint: "note",
//                     fillColor: AppColors.background,
//                   ),
//                 ],
//               ),
//             ),
//             _spacer(),
//             AppText(
//               title: "Instability",
//               fontSize: 16,
//               fontWeight: FontWeight.w700,
//               color: AppColors.txtFieldlable1,
//             ),
//             SizedBox(height: 16.height),
//             Container(
//               decoration: BoxDecoration(
//                 color: AppColors.txtFieldlableBg,
//                 borderRadius: BorderRadius.circular(6),
//               ),
//               padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
//               child: Column(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       cubit.toggleAllInstabilityNotDone(
//                         value: !cubit.allInstabilityNotDone,
//                       );
//                     },
//                     child: Row(
//                       children: [
//                         Container(
//                           width: 18.width,
//                           height: 18.height,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: cubit.allInstabilityNotDone
//                                 ? AppColors.primary
//                                 : AppColors.white,
//                             border: Border.all(
//                               color: AppColors.primary,
//                               width: 2,
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 12.width),
//                         AppText(
//                           title: "Determine if all of them are not done",
//                           fontSize: 16,
//                           fontWeight: FontWeight.w700,
//                           color: AppColors.txtFieldlable1,
//                         ),
//                       ],
//                     ),
//                   ),
//                   _spacer(),
//                   AppToggle(
//                     optionNames: const ['+ve', '-ve', 'not done'],
//                     label: "Apprehension",
//                   ),
//                   _spacer(),
//                   AppToggle(
//                     optionNames: const ['+ve', '-ve', 'not done'],
//                     label: "Relocation",
//                   ),
//                   _spacer(),
//                   AppTextField(
//                     hint: "note",
//                     fillColor: AppColors.background,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Widget _spacer() => SizedBox(height: 24.height);
// }
