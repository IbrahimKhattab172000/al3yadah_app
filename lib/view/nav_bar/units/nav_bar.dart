// ignore_for_file: sort_child_properties_last

part of '../view.dart';

class _NavBar extends StatelessWidget {
  const _NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = NavBarCubit.of(context);
    final currentViewIndex = cubit.currentViewIndex;
    return Container(
      height: Utils.bottomDevicePadding + 92,
      padding: EdgeInsets.only(
        top: 16,
        bottom: Utils.bottomDevicePadding,
        left: 24,
        right: 24,
      ),
      child: Row(
        children: [
          _navBarItem(
            icon: 'settings',
            title: 'setting',
            onTap: () => cubit.changeView(0),
            color: currentViewIndex == 0 ? AppColors.primary : AppColors.white,
          ),
          _navBarItem(
            icon: 'home',
            title: 'home',
            onTap: () => cubit.changeView(1),
            color: currentViewIndex == 1 ? AppColors.primary : AppColors.white,
          ),
        ],
      ),
      decoration: const BoxDecoration(
        color: AppColors.fourth,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
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
            const SizedBox(height: 16),
            Image.asset(
              Utils.getAssetPNGPath(icon),
              height: 24,
              width: 24,
              color: color,
            ),
            const SizedBox(height: 6),
            FittedBox(
              child: AppText(
                title: title,
                fontSize: 14,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
