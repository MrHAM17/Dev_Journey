import '../models/sixty_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_07_comfort___hotel_booking_app/core/app_export.dart';

// ignore: must_be_immutable
class SixtyItemWidget extends StatelessWidget {
  SixtyItemWidget(
    this.sixtyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SixtyItemModel sixtyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.v),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: sixtyItemModelObj?.martinezCannes,
            height: 100.adaptSize,
            width: 100.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 11.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sixtyItemModelObj.presidentHotel!,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 18.v),
                Text(
                  sixtyItemModelObj.parisFrance!,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 12.v),
                Row(
                  children: [
                    SizedBox(
                      width: 35.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSignalYellowA700,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 2.v),
                          ),
                          Text(
                            sixtyItemModelObj.fortyEight!,
                            style: CustomTextStyles.titleSmallPrimary,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        sixtyItemModelObj.reviews!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  sixtyItemModelObj.price!,
                  style: CustomTextStyles.headlineSmallPrimary,
                ),
                SizedBox(height: 2.v),
                Text(
                  sixtyItemModelObj.night!,
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 16.v),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmarkPrimary,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
