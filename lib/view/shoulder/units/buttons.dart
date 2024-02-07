part of "../view.dart";

class _Buttons extends StatelessWidget {
  const _Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = ShoulderCubit.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppButton.outline(
          title: "Back",
          onTap: () {
            if (!cubit.isFirst) {
              cubit.previousStep();
            } else {
              RouteUtils.pop();
            }
          },
          titleColor: AppColors.primary,
        ),
        AppButton(
          title: cubit.isLast ? "Submit" : "Next",
          color: AppColors.primary,
          onTap: () {
            if (!cubit.isLast) {
              cubit.nextStep();
            } else {
              // RouteUtils.navigateTo(SuccessView());
            }
          },
        ),
      ],
    );
  }
}


// import 'package:flutter/material.dart';

// class CustomizableToggle extends StatefulWidget {
//   final List<String> optionNames;
//   final List<Color> optionColors;
//   final String label;

//   CustomizableToggle({
//     required this.optionNames,
//     required this.optionColors,
//     required this.label,
//   });

//   @override
//   _CustomizableToggleState createState() => _CustomizableToggleState();
// }

// class _CustomizableToggleState extends State<CustomizableToggle> {
//   int selectedOptionIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(widget.label),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: List.generate(widget.optionNames.length, (index) {
//             return GestureDetector(
//               onTap: () {
//                 setState(() {
//                   selectedOptionIndex = index;
//                 });
//               },
//               child: Container(
//                 width: 30.0, // Adjust the width as needed
//                 height: 30.0, // Adjust the height as needed
//                 margin: EdgeInsets.all(8.0),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(
//                     color: widget.optionColors[index],
//                     width: 2.0,
//                   ),
//                   color: selectedOptionIndex == index
//                       ? widget.optionColors[index]
//                       : Colors.white,
//                 ),
//                 child: Center(
//                   child: Text(
//                     widget.optionNames[index],
//                     style: TextStyle(
//                       color: selectedOptionIndex == index
//                           ? Colors.white
//                           : widget.optionColors[index],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           }),
//         ),
//       ],
//     );
//   }
// }