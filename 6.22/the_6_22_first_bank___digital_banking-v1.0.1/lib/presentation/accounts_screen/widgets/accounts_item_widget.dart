import '../models/accounts_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_6_22_first_bank___digital_banking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AccountsItemWidget extends StatelessWidget {
  AccountsItemWidget(
    this.accountsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AccountsItemModel accountsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 45.adaptSize,
            width: 45.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillGrayTL22,
            child: CustomImageView(
              imagePath: accountsItemModelObj?.moneyTagOne,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    accountsItemModelObj.myBalance!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  accountsItemModelObj.price!,
                  style: CustomTextStyles.titleMediumPrimary_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
