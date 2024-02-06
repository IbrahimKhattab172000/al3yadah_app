// ignore_for_file: sort_child_properties_last

part of '../view.dart';

class _NavBar extends StatelessWidget {
  const _NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = NavBarCubit.of(context);
    final currentViewIndex = cubit.currentViewIndex;
    return Container(
      height: Utils.bottomDevicePadding + 84,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.1),
            blurRadius: 110,
            spreadRadius: 0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Container(
        height: Utils.bottomDevicePadding + 84,
        padding: EdgeInsets.only(
          top: 28,
          bottom: Utils.bottomDevicePadding,
          left: 24,
          right: 24,
        ),
        child: Row(
          children: [
            _navBarItem(
              icon: 'home',
              title: 'Home',
              onTap: () => cubit.changeView(0),
              color: currentViewIndex == 0
                  ? AppColors.primary
                  : AppColors.lightGray,
            ),
            _navBarItem(
              icon: 'settings',
              title: 'Setting',
              onTap: () => cubit.changeView(1),
              color: currentViewIndex == 1
                  ? AppColors.primary
                  : AppColors.lightGray,
            ),
          ],
        ),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
          ),
        ),
      ),
    );
  }

  Widget _navBarItem({
    required String icon,
    required String title,
    required VoidCallback onTap,
    required Color color,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 8.height),
            Image.asset(
              Utils.getAssetPNGPath(icon),
              height: 24.height,
              width: 24.width,
              color: color,
            ),
            SizedBox(height: 4.height),
            FittedBox(
              child: AppText(
                title: title,
                fontSize: 16,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
