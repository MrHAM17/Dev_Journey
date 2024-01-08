import '../controller/events_controller.dart';
import '../models/events_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/widgets/custom_elevated_button.dart';
import 'package:the_4_09_social_dashboards_ui_kit/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class EventsItemWidget extends StatelessWidget {
  EventsItemWidget(
    this.eventsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EventsItemModel eventsItemModelObj;

  var controller = Get.find<EventsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: eventsItemModelObj.fashionMeetup!.value,
              height: 180.v,
              width: 283.h,
              radius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 10.h),
            child: Row(
              children: [
                CustomOutlinedButton(
                  height: 38.v,
                  width: 38.h,
                  text: "lbl_1".tr,
                  buttonTextStyle: theme.textTheme.titleMedium!,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          eventsItemModelObj.monday!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Obx(
                        () => Text(
                          eventsItemModelObj.decemberCounter!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Obx(
                  () => CustomImageView(
                    imagePath: eventsItemModelObj.monday1!.value,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 10.v),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Obx(
            () => Text(
              eventsItemModelObj.title!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              eventsItemModelObj.time!.value,
              style: CustomTextStyles.titleSmallBluegray400,
            ),
          ),
          SizedBox(height: 28.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomElevatedButton(
                height: 28.v,
                width: 87.h,
                text: "lbl_interested".tr,
              ),
              SizedBox(
                height: 28.v,
                width: 74.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      alignment: Alignment.centerLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 28.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder9,
                        ),
                        child: Obx(
                          () => Text(
                            eventsItemModelObj.avatarInitials!.value,
                            style: CustomTextStyles.titleSmallWhiteA700Bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
