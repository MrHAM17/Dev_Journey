import '../models/homealarm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_21_vertex___real_estate_app/core/app_export.dart';
import 'package:the_3_21_vertex___real_estate_app/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class HomealarmItemWidget extends StatelessWidget {
  HomealarmItemWidget(
    this.homealarmItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomealarmItemModel homealarmItemModelObj;

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
                    Text(
                      homealarmItemModelObj.mightyCincoFamily!,
                      style: CustomTextStyles.titleMediumBold,
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
                          child: Text(
                            homealarmItemModelObj.stCelinaDelaware!,
                            style: theme.textTheme.bodySmall,
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
                          CustomImageView(
                            imagePath: homealarmItemModelObj?.jan,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              homealarmItemModelObj.jan1!,
                              style: CustomTextStyles
                                  .labelLargePrimaryContainerSemiBold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: homealarmItemModelObj?.pm,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              homealarmItemModelObj.time!,
                              style: CustomTextStyles
                                  .labelLargePrimaryContainerSemiBold,
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
                    CustomImageView(
                      imagePath: homealarmItemModelObj?.mightyCincoFamily1,
                      height: 33.adaptSize,
                      width: 33.adaptSize,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          homealarmItemModelObj.buyerSAgent!,
                          style: CustomTextStyles.bodySmall10,
                        ),
                        Text(
                          homealarmItemModelObj.leslieAlexander!,
                          style: CustomTextStyles
                              .labelLargePrimaryContainerSemiBold,
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
