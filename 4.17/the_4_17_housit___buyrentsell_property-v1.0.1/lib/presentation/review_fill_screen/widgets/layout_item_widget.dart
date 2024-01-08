import '../controller/review_fill_controller.dart';
import '../models/layout_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_4_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LayoutItemWidget extends StatelessWidget {
  LayoutItemWidget(
    this.layoutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LayoutItemModel layoutItemModelObj;

  var controller = Get.find<ReviewFillController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillGreenA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      width: 159.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomIconButton(
              height: 25.adaptSize,
              width: 25.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillWhiteATL122,
              child: CustomImageView(
                imagePath: layoutItemModelObj.checkmark!.value,
              ),
            ),
          ),
          SizedBox(height: 41.v),
          Obx(
            () => Text(
              layoutItemModelObj.text!.value,
              style: CustomTextStyles.titleMediumWhiteA700_1,
            ),
          ),
          SizedBox(height: 25.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        layoutItemModelObj.balance!.value,
                        style: CustomTextStyles.labelSmallWhiteA700SemiBold_1,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Obx(
                      () => Text(
                        layoutItemModelObj.price!.value,
                        style: CustomTextStyles.labelLargeWhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath: layoutItemModelObj.balance1!.value,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    left: 59.h,
                    top: 13.v,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
