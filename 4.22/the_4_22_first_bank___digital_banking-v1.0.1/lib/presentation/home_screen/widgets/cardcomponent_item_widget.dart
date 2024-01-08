import '../controller/home_controller.dart';
import '../models/cardcomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';

// ignore: must_be_immutable
class CardcomponentItemWidget extends StatelessWidget {
  CardcomponentItemWidget(
    this.cardcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardcomponentItemModel cardcomponentItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      width: 265.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 17.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      cardcomponentItemModelObj.balance!.value,
                      style: TextStyle(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        fontSize: 10.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Obx(
                    () => Text(
                      cardcomponentItemModelObj.balanceAmount!.value,
                      style: TextStyle(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        fontSize: 16.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgChipCard,
                height: 29.adaptSize,
                width: 29.adaptSize,
                margin: EdgeInsets.only(
                  left: 141.h,
                  top: 4.v,
                  bottom: 3.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          cardcomponentItemModelObj.cardHolderName!.value,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            fontSize: 10.fSize,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Obx(
                        () => Text(
                          cardcomponentItemModelObj.cardHolderText!.value,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            fontSize: 14.fSize,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 41.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => Text(
                            cardcomponentItemModelObj.validThruDate!.value,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              fontSize: 10.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Obx(
                          () => Text(
                            cardcomponentItemModelObj.validThruText!.value,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                              fontSize: 14.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.gradientOnPrimaryToOnPrimary.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Obx(
                    () => Text(
                      cardcomponentItemModelObj.cardNumberText!.value,
                      style: TextStyle(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        fontSize: 14.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUserOnprimary,
                  height: 18.v,
                  width: 27.h,
                  margin: EdgeInsets.only(left: 60.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
