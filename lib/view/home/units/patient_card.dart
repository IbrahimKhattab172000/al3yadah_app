part of "../view.dart";

class _PatientCard extends StatelessWidget {
  const _PatientCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 344.width,
      // height: 100.height,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.primary,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.purple,
            radius: 30,
            child: AppText(
              title: "AD",
              color: AppColors.background,
            ),
          ),
          SizedBox(width: 15.width),
          Container(
            height: 100,
            color: AppColors.txtFieldlable1,
            width: 1,
          ),
          SizedBox(width: 15.width),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title: "Sara Ahmed",
                color: AppColors.primary,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 5.height),
              Row(
                children: [
                  AppText(
                    title: "presented area:",
                    color: AppColors.txtFieldlable2,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(width: 5.width),
                  AppText(
                    title: "Knee",
                    color: AppColors.txtFieldlable1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              AppText(
                title: "10 oct",
                color: AppColors.txtFieldlable1,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
