import '../models/tickets2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_3_07_comfort___hotel_booking_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Tickets2ItemWidget extends StatelessWidget {
  Tickets2ItemWidget(
    this.tickets2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Tickets2ItemModel tickets2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 42.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: tickets2ItemModelObj?.palmsCasinoResort,
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tickets2ItemModelObj.palmsCasinoResort1!,
                        style: CustomTextStyles.titleLarge20,
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        tickets2ItemModelObj.londonUnitedKingdom!,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 10.v),
                      CustomElevatedButton(
                        height: 24.v,
                        width: 60.h,
                        text: "lbl_paid".tr,
                        buttonStyle: CustomButtonStyles.fillRed,
                        buttonTextStyle: CustomTextStyles.labelMediumRed400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVideoCamera,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    top: 5.v,
                  ),
                  child: Text(
                    tickets2ItemModelObj.youCanceledThis!,
                    style: CustomTextStyles.labelMediumRed400_1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
