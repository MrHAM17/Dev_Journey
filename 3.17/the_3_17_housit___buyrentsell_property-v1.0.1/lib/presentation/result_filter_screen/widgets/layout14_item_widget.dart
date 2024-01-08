import '../models/layout14_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';
import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Layout14ItemWidget extends StatelessWidget {
  Layout14ItemWidget(
    this.layout14ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout14ItemModel layout14ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140.v,
            width: 168.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: layout14ItemModelObj?.image,
                  height: 140.v,
                  width: 168.h,
                  radius: BorderRadius.circular(
                    18.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.fillWhiteATL12,
                          child: CustomImageView(
                            imagePath: layout14ItemModelObj?.favorite,
                          ),
                        ),
                        SizedBox(height: 75.v),
                        CustomElevatedButton(
                          height: 24.v,
                          width: 56.h,
                          text: "lbl_house".tr,
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 6.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgClose,
                              height: 13.v,
                              width: 11.h,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillBlueGrayAfTL8,
                          buttonTextStyle: CustomTextStyles.labelSmallGray100,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 97.h,
                  child: Text(
                    layout14ItemModelObj.bridgelandModernHouse!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSignalYellow7009x9,
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        layout14ItemModelObj.text!,
                        style: CustomTextStyles.labelSmallBold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedin,
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        layout14ItemModelObj.semarangIndonesia!,
                        style: theme.textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18.v),
                Row(
                  children: [
                    Text(
                      layout14ItemModelObj.price!,
                      style: CustomTextStyles.titleMedium16,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.v),
                      child: Text(
                        layout14ItemModelObj.month!,
                        style: CustomTextStyles.labelSmallBluegray80001,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
