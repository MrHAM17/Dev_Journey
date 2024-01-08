import '../models/durgs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_06_helthio___telehealth/core/app_export.dart';
import 'package:the_3_06_helthio___telehealth/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DurgsItemWidget extends StatelessWidget {
  DurgsItemWidget(
    this.durgsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DurgsItemModel durgsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: durgsItemModelObj?.oBHCombi,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(
              left: 27.h,
              top: 20.v,
              bottom: 21.v,
            ),
          ),
          Spacer(
            flex: 55,
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  durgsItemModelObj.oBHCombi1!,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 3.v),
                Text(
                  durgsItemModelObj.measurement!,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 25.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSettingsGray500,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        durgsItemModelObj.one!,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: CustomIconButton(
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCloseWhiteA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(
            flex: 44,
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpGray500,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 47.v),
                Text(
                  durgsItemModelObj.price!,
                  style: CustomTextStyles.titleMedium18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
