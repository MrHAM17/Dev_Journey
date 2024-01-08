import '../controller/suggested_controller.dart';
import '../models/suggested_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SuggestedItemWidget extends StatelessWidget {
  SuggestedItemWidget(
    this.suggestedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SuggestedItemModel suggestedItemModelObj;

  var controller = Get.find<SuggestedController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: suggestedItemModelObj.rayfordChenail!.value,
            height: 60.adaptSize,
            width: 60.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 8.v,
            bottom: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  suggestedItemModelObj.rayfordChenail1!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 5.v),
              Obx(
                () => Text(
                  suggestedItemModelObj.price!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 32.v,
          width: 73.h,
          text: "lbl_follow".tr,
          margin: EdgeInsets.symmetric(vertical: 14.v),
        ),
      ],
    );
  }
}
