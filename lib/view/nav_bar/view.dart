import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/helpers/utils.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/home/view.dart';
import 'package:al3yadah_app/view/nav_bar/cubit.dart';
import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'units/body.dart';
part 'units/add.dart';
part 'units/nav_bar.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarStates>(
        builder: (context, state) {
          return const Scaffold(
            body: _Body(),
            bottomNavigationBar: _NavBar(),
            floatingActionButton: _Add(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterTop,
          );
        },
      ),
    );
  }
}