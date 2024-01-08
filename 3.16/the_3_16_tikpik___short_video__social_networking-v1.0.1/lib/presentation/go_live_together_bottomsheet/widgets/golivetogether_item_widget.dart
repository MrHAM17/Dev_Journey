import '../models/golivetogether_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class GolivetogetherItemWidget extends StatelessWidget {
  GolivetogetherItemWidget(
    this.golivetogetherItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GolivetogetherItemModel golivetogetherItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 232.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: golivetogetherItemModelObj?.chantalShelburne,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      golivetogetherItemModelObj.chantalShelburne1!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      golivetogetherItemModelObj.time!,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
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
