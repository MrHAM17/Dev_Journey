import '../models/viewers_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ViewersItemWidget extends StatelessWidget {
  ViewersItemWidget(
    this.viewersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewersItemModel viewersItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 172.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse11,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 29.v,
                ),
                child: Text(
                  viewersItemModelObj.darylNehls!,
                  style: theme.textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
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
