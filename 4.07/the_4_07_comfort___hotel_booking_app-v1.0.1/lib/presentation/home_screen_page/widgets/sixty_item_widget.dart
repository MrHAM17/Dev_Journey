import '../controller/home_screen_controller.dart';
import '../models/sixty_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';

// ignore: must_be_immutable
class SixtyItemWidget extends StatelessWidget {
  SixtyItemWidget(
    this.sixtyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SixtyItemModel sixtyItemModelObj;

  var controller = Get.find<HomeScreenController>();

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
          Obx(
            () => CustomImageView(
              imagePath: sixtyItemModelObj.martinezCannes!.value,
              height: 100.adaptSize,
              width: 100.adaptSize,
              radius: BorderRadius.circular(
                16.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 1.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 11.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    sixtyItemModelObj.presidentHotel!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 18.v),
                Obx(
                  () => Text(
                    sixtyItemModelObj.parisFrance!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
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
                          Obx(
                            () => Text(
                              sixtyItemModelObj.fortyEight!.value,
                              style: CustomTextStyles.titleSmallPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Obx(
                        () => Text(
                          sixtyItemModelObj.reviews!.value,
                          style: theme.textTheme.bodySmall,
                        ),
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
                Obx(
                  () => Text(
                    sixtyItemModelObj.price!.value,
                    style: CustomTextStyles.headlineSmallPrimary,
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    sixtyItemModelObj.night!.value,
                    style: theme.textTheme.labelMedium,
                  ),
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
