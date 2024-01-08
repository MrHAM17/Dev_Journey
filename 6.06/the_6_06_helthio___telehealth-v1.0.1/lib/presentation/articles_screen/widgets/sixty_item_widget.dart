import '../models/sixty_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_06_helthio___telehealth/core/app_export.dart';

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
      padding: EdgeInsets.all(4.h),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: sixtyItemModelObj?.image,
            height: 59.adaptSize,
            width: 59.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 206.h,
                  child: Text(
                    sixtyItemModelObj.theHealthiest!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelLargeOnPrimary.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 1.v),
                Row(
                  children: [
                    Text(
                      sixtyItemModelObj.jun!,
                      style: theme.textTheme.labelMedium,
                    ),
                    Container(
                      height: 2.adaptSize,
                      width: 2.adaptSize,
                      margin: EdgeInsets.only(
                        left: 2.h,
                        top: 3.v,
                        bottom: 7.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray500,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        sixtyItemModelObj.time!,
                        style: CustomTextStyles.labelMediumPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: sixtyItemModelObj?.image1,
            height: 12.v,
            width: 10.h,
            margin: EdgeInsets.only(
              left: 27.h,
              top: 8.v,
              bottom: 39.v,
            ),
          ),
        ],
      ),
    );
  }
}
