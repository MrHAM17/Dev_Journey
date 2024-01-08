import '../models/followback1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Followback1ItemWidget extends StatelessWidget {
  Followback1ItemWidget(
    this.followback1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Followback1ItemModel followback1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: followback1ItemModelObj?.clintonMcclure,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 6.v,
            bottom: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                followback1ItemModelObj.clintonMcclure1!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 7.v),
              Text(
                followback1ItemModelObj.startedfollowingyou!,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomElevatedButton(
          height: 32.v,
          width: 107.h,
          text: "lbl_follow_back".tr,
          margin: EdgeInsets.symmetric(vertical: 14.v),
        ),
      ],
    );
  }
}
