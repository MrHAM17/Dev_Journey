import '../models/confirmrequestbottomsheet_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';
import 'package:the_5_21_vertex___real_estate_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ConfirmrequestbottomsheetItemWidget extends StatelessWidget {
  ConfirmrequestbottomsheetItemWidget(
    this.confirmrequestbottomsheetItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ConfirmrequestbottomsheetItemModel confirmrequestbottomsheetItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(9.h),
            decoration: IconButtonStyleHelper.fillGrayTL20,
            child: CustomImageView(
              imagePath: confirmrequestbottomsheetItemModelObj?.home,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  confirmrequestbottomsheetItemModelObj.homeClosed!,
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  confirmrequestbottomsheetItemModelObj.twentyFive!,
                  style: CustomTextStyles.titleSmallExtraBold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
