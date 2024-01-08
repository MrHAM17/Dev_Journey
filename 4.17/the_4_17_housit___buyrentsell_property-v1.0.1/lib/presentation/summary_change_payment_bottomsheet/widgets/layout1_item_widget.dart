import '../controller/summary_change_payment_controller.dart';
import '../models/layout1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_4_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Layout1ItemWidget extends StatelessWidget {
  Layout1ItemWidget(
    this.layout1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout1ItemModel layout1ItemModelObj;

  var controller = Get.find<SummaryChangePaymentController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillGreenA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder25,
          ),
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
                    imagePath: layout1ItemModelObj.checkmark!.value,
                  ),
                ),
              ),
              SizedBox(height: 41.v),
              Obx(
                () => Text(
                  layout1ItemModelObj.text!.value,
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
                            layout1ItemModelObj.balance!.value,
                            style:
                                CustomTextStyles.labelSmallWhiteA700SemiBold_1,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Obx(
                          () => Text(
                            layout1ItemModelObj.price!.value,
                            style: CustomTextStyles.labelLargeWhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: layout1ItemModelObj.balance1!.value,
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
        ),
      ),
    );
  }
}
