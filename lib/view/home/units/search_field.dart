part of "../view.dart";

class _SearchField extends StatelessWidget {
  const _SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 51.height,
          width: 51.height,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            Utils.getAssetPNGPath("person"),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.width),
        const Expanded(
          child: AppTextField(
            fillColor: AppColors.txtFieldlableBg,
            hint: "search",
            hintColor: AppColors.txtFieldlable2,
            leading: Icon(
              Icons.search,
              color: AppColors.txtFieldlable2,
            ),
          ),
        ),
      ],
    );
  }
}
