import '../controller/home_alarm_controller.dart';
import '../models/homealarm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';
import 'package:the_4_21_vertex___real_estate_app/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class HomealarmItemWidget extends StatelessWidget {
  HomealarmItemWidget(
    this.homealarmItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomealarmItemModel homealarmItemModelObj;

  var controller = Get.find<HomeAlarmController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        homealarmItemModelObj.mightyCincoFamily!.value,
                        style: CustomTextStyles.titleMediumBold,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIconMapPin,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Obx(
                            () => Text(
                              homealarmItemModelObj.stCelinaDelaware!.value,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath: homealarmItemModelObj.jan!.value,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Obx(
                              () => Text(
                                homealarmItemModelObj.jan1!.value,
                                style: CustomTextStyles
                                    .labelLargePrimaryContainerSemiBold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.v),
                      Row(
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath: homealarmItemModelObj.pm!.value,
                              height: 14.adaptSize,
                              width: 14.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Obx(
                              () => Text(
                                homealarmItemModelObj.time!.value,
                                style: CustomTextStyles
                                    .labelLargePrimaryContainerSemiBold,
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
          SizedBox(height: 13.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 143.h,
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 1.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            homealarmItemModelObj.mightyCincoFamily1!.value,
                        height: 33.adaptSize,
                        width: 33.adaptSize,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            homealarmItemModelObj.buyerSAgent!.value,
                            style: CustomTextStyles.bodySmall10,
                          ),
                        ),
                        Obx(
                          () => Text(
                            homealarmItemModelObj.leslieAlexander!.value,
                            style: CustomTextStyles
                                .labelLargePrimaryContainerSemiBold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomOutlinedButton(
                height: 37.v,
                width: 103.h,
                text: "lbl_phone".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPhone,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlinePrimary,
                buttonTextStyle: CustomTextStyles.titleSmallPrimary_2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
