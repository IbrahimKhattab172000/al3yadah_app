import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/helpers/app_colors.dart';
import '../../core/helpers/utils.dart';
import '../app_text.dart';
import '../app_text_field.dart';

class CartCard extends StatefulWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  bool? forMen;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: AppText(
                title: 'مسجد المدينة',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
            const Icon(
              Icons.delete,
              color: AppColors.red,
            ),
          ],
        ),
        const SizedBox(height: 12),
        ...[1, 2].map((e) {
          return _ProductCard(
            onCountChanged: (v) {},
          );
        }),
        AppText(
          title: 'deliver_to'.tr() + " : ",
          color: AppColors.secondary,
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            _prayerChip(
              title: 'men_prayer'.tr(),
              onTap: () => setState(() => forMen = true),
              isEnabled: forMen == true,
            ),
            const SizedBox(width: 12),
            _prayerChip(
              title: 'women_prayer'.tr(),
              onTap: () => setState(() => forMen = false),
              isEnabled: forMen == false,
            ),
          ],
        ),
        const SizedBox(height: 12),
        AppTextField(
          hint: "the_reciever".tr(),
          borderColor: AppColors.lightGray,
        ),
        const SizedBox(height: 12),
        AppTextField(
          hint: "message_to_the_delivery_man".tr(),
          borderColor: AppColors.lightGray,
          maxLines: 5,
        ),
      ],
    );
  }

  Widget _prayerChip({
    required String title,
    required bool isEnabled,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: AppText(
            title: title,
            color: AppColors.white,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: isEnabled
                ? AppColors.secondary
                : AppColors.primary.withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}

class _ProductCard extends StatefulWidget {
  const _ProductCard({Key? key, required this.onCountChanged})
      : super(key: key);

  final void Function(int count) onCountChanged;

  @override
  State<_ProductCard> createState() => __ProductCard();
}

class __ProductCard extends State<_ProductCard> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.height,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                Utils.dummyProductImage,
                cacheWidth: 84,
                cacheHeight: 84,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const VerticalDivider(
            color: AppColors.white,
            thickness: 1,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: AppText(
                          title: '10 كراتين',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const InkWell(
                        child: Icon(
                          FontAwesomeIcons.xmark,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.height),
                  AppText(
                    title: '20 عبوة 330X مل',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    color: AppColors.white,
                    fontSize: 12,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AppText(
                          title: '1000' + ' ' + 'ريال',
                          color: AppColors.green,
                          maxLines: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (count == 1) {
                            return;
                          }
                          count--;
                          setState(() {});
                          widget.onCountChanged(count);
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.circleMinus,
                          color: AppColors.green,
                        ),
                      ),
                      SizedBox(width: 10.width),
                      AppText(
                        title: '$count',
                        fontSize: 16,
                        color: AppColors.white,
                      ),
                      SizedBox(width: 10.width),
                      InkWell(
                        onTap: () {
                          if (count == 99) {
                            return;
                          }
                          count++;
                          setState(() {});
                          widget.onCountChanged(count);
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.circlePlus,
                          color: AppColors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
