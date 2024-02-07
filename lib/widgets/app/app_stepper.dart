import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:flutter/material.dart';

import '../../core/helpers/app_colors.dart';
import '../app_text.dart';

class AppStepper extends StatefulWidget {
  final int totalSteps;
  final int currentStep;

  const AppStepper(
      {super.key, required this.totalSteps, required this.currentStep});

  @override
  _AppStepperState createState() => _AppStepperState();
}

class _AppStepperState extends State<AppStepper> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearProgressIndicator(
          value: widget.currentStep / widget.totalSteps,
          backgroundColor: AppColors.txtFieldlableBg,
          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primary),
        ),
        SizedBox(height: 8.height),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: List.generate(
        //     widget.totalSteps,
        //     (index) {
        //       bool isCompleted = index < widget.currentStep;
        //       return _buildStepIndicator(isCompleted);
        //     },
        //   ),
        // ),
      ],
    );
  }

//   Widget _buildStepIndicator(bool isCompleted) {
//     return Container(
//       width: 24.0,
//       height: 24.0,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: isCompleted ? Colors.green : Colors.grey,
//         border: Border.all(color: Colors.white, width: 2.0),
//       ),
//       child: Center(
//         child: Text(
//           isCompleted ? '${widget.totalSteps}' : '${widget.totalSteps}',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
}


///Old app stepper
// class AppStepper extends StatelessWidget {
//   const AppStepper({
//     Key? key,
//     required this.steps,
//     required this.currentStep,
//   }) : super(key: key);

//   final List<String> steps;
//   final int currentStep;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Positioned(
//           left: 64,
//           right: 64,
//           top: 16,
//           child: Container(
//             height: 1,
//             width: double.infinity,
//             color: AppColors.white,
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: steps.map((e) {
//             final index = steps.indexOf(e);
//             return _step(
//               title: e,
//               active: (currentStep - 1) >= index,
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }

//   Widget _step({
//     required bool active,
//     required String title,
//   }) {
//     return Expanded(
//       child: Column(
//         children: [
//           Container(
//             height: 28,
//             width: 28,
//             child: UnconstrainedBox(
//               child: Icon(
//                 FontAwesomeIcons.check,
//                 color: active ? AppColors.primary : Colors.transparent,
//                 size: 16,
//               ),
//             ),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: active ? AppColors.white : AppColors.primary,
//               border: Border.all(
//                 color: AppColors.white,
//               ),
//             ),
//           ),
//           SizedBox(height: 12),
//           FittedBox(
//             child: AppText(
//               title: title,
//               fontSize: 14,
//               color: AppColors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }