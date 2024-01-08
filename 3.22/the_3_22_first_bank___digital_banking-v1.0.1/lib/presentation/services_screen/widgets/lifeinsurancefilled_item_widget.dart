import '../models/lifeinsurancefilled_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_3_22_first_bank___digital_banking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LifeinsurancefilledItemWidget extends StatelessWidget {
  LifeinsurancefilledItemWidget(
    this.lifeinsurancefilledItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LifeinsurancefilledItemModel lifeinsurancefilledItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      width: 230.h,
      child: Row(
        children: [
          CustomIconButton(
            height: 45.adaptSize,
            width: 45.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillGrayTL22,
            child: CustomImageView(
              imagePath: lifeinsurancefilledItemModelObj?.lifeInsuranceFilled,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lifeinsurancefilledItemModelObj.lifeInsurance!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 6.v),
                Text(
                  lifeinsurancefilledItemModelObj.unlimitedProtection!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
