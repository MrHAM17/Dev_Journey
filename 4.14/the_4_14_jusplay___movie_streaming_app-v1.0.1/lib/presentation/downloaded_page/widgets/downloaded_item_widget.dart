import '../controller/downloaded_controller.dart';
import '../models/downloaded_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class DownloadedItemWidget extends StatelessWidget {
  DownloadedItemWidget(
    this.downloadedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DownloadedItemModel downloadedItemModelObj;

  var controller = Get.find<DownloadedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: downloadedItemModelObj.image!.value,
              height: 112.adaptSize,
              width: 112.adaptSize,
              radius: BorderRadius.circular(
                15.h,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 201.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 136.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_captain".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                                TextSpan(
                                  text: "msg_america_the_winter".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Obx(
                          () => Text(
                            downloadedItemModelObj.actionAdventure!.value,
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgNotification,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(bottom: 35.v),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37.v),
              Row(
                children: [
                  Obx(
                    () => Text(
                      downloadedItemModelObj
                          .twentyThousandFiveHundredThirt!.value,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector106,
                    height: 10.v,
                    width: 1.h,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      top: 2.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Obx(
                      () => Text(
                        downloadedItemModelObj.filesize!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
