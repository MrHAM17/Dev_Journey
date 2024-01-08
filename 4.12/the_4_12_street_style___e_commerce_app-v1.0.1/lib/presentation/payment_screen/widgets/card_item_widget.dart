import '../controller/payment_controller.dart';
import '../models/card_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_12_street_style___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class CardItemWidget extends StatelessWidget {
  CardItemWidget(
    this.cardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardItemModel cardItemModelObj;

  var controller = Get.find<PaymentController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(right: 57.h),
        color: appTheme.black900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Container(
          height: 195.v,
          width: 333.h,
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          decoration: AppDecoration.fillBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder30,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl2".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                        TextSpan(
                          text: "lbl_01122".tr,
                          style: CustomTextStyles.titleLargeWhiteA700,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: cardItemModelObj.television!.value,
                          height: 16.v,
                          width: 91.h,
                        ),
                      ),
                      SizedBox(height: 98.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 32.v,
                          width: 51.h,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.yellow800,
                                    borderRadius: BorderRadius.circular(
                                      16.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.deepOrangeA400,
                                    borderRadius: BorderRadius.circular(
                                      16.h,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
