import '../controller/search_controller.dart';
import '../models/searchpage_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';

// ignore: must_be_immutable
class SearchpageItemWidget extends StatelessWidget {
  SearchpageItemWidget(
    this.searchpageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchpageItemModel searchpageItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.v),
      decoration: AppDecoration.outlineBlackC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 264.h,
            margin: EdgeInsets.only(bottom: 2.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: searchpageItemModelObj.presidentHotel!.value,
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                    margin: EdgeInsets.only(top: 1.v),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 9.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          searchpageItemModelObj.presidentHotel1!.value,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 18.v),
                      Obx(
                        () => Text(
                          searchpageItemModelObj.parisFrance!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSignalYellowA700,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Obx(
                              () => Text(
                                searchpageItemModelObj.fortyEight!.value,
                                style: CustomTextStyles.titleSmallPrimary,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.h,
                              top: 1.v,
                            ),
                            child: Obx(
                              () => Text(
                                searchpageItemModelObj.reviews!.value,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                    searchpageItemModelObj.price!.value,
                    style: CustomTextStyles.headlineSmallPrimary,
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    searchpageItemModelObj.night!.value,
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
