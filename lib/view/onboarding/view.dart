import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/home/view.dart';
import 'package:al3yadah_app/view/nav_bar/view.dart';
import 'package:al3yadah_app/widgets/app_button.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatefulWidget {
  OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
      imagePath: "onboarding1",
      title: "Enhanced Efficiency",
      body:
          "Our user-friendly interface and intuitive navigation system make it easy to navigate through the program, saving you time and effort",
    ),
    BoardingModel(
      imagePath: "onboarding1",
      title: "Seamless Follow-up Care",
      body:
          "Our program prompts you to review previous data before each visit, ensuring continuity of care",
    ),
    BoardingModel(
      imagePath: "onboarding3",
      title: "Data Privacy and Security",
      body:
          "We prioritize the privacy and security of patient data. Rest assured that our program is designed to comply with all applicable laws and regulations",
    ),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Utils.topDevicePadding),
              child: Align(
                alignment: Alignment.topRight,
                child: AppText(
                  title: "Skip",
                  color: AppColors.primary,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 80.height),
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: boardController,
                itemBuilder: ((context, index) => buildBoardingItem(
                      boarding[index],
                    )),
                itemCount: boarding.length,
                onPageChanged: (index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
              ),
            ),
            SizedBox(height: 16.height),
            SmoothPageIndicator(
              axisDirection: Axis.horizontal,
              controller: boardController,
              count: boarding.length,
              textDirection: TextDirection.ltr,
              effect: const ExpandingDotsEffect(
                dotColor: AppColors.gray,
                activeDotColor: AppColors.primary,
                dotHeight: 10,
                expansionFactor: 3,
                dotWidth: 10,
                spacing: 4.0,
              ),
            ),
            SizedBox(height: 70.height),
            isLast
                ? AppButton(
                    title: "Login",
                    color: AppColors.primary,
                    onTap: () => RouteUtils.navigateTo(const NavBarView()),
                  )
                : InkWell(
                    onTap: () {
                      if (isLast) {
                      } else {
                        boardController.nextPage(
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastOutSlowIn,
                        );
                      }
                    },
                    child: const Icon(
                      FontAwesomeIcons.circleChevronRight,
                      color: AppColors.primary,
                      size: 50,
                    ),
                  ),
            SizedBox(height: Utils.bottomDevicePadding),
          ],
        ),
      ),
    );
  }
}

Widget buildBoardingItem(BoardingModel model) => Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 260.height,
          width: 260.width,
          child: Center(
            child: Image.asset(
              Utils.getAssetPNGPath(model.imagePath),
            ),
          ),
        ),
        SizedBox(height: 14.height),
        AppText(
          title: model.title,
          color: AppColors.primary,
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
        SizedBox(height: 24.height),
        AppText(
          title: model.body,
          color: AppColors.txtFieldlable1,
          fontSize: 16,
          textAlign: TextAlign.center,
        ),
      ],
    );

class BoardingModel {
  final String imagePath;
  final String title;
  final String body;
  BoardingModel({
    required this.imagePath,
    required this.title,
    required this.body,
  });
}
