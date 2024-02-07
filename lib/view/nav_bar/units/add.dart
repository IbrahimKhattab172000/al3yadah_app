part of '../view.dart';

class _Add extends StatelessWidget {
  const _Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () => RouteUtils.navigateTo(NewPatientView()),
          child: SizedBox(
            height: 82.height,
            width: 82.width,
            child: Image.asset(
              Utils.getAssetPNGPath("polyglon"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: Utils.bottomDevicePadding + 92),
      ],
    );
  }
}
