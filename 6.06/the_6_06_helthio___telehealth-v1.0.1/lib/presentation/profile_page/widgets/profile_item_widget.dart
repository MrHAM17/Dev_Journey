import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_06_helthio___telehealth/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(
    this.profileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileItemModel profileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 61.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: profileItemModelObj?.heartrate,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          SizedBox(height: 6.v),
          Text(
            profileItemModelObj.heartRate!,
            style: CustomTextStyles.labelMediumBlue50,
          ),
          SizedBox(height: 5.v),
          Text(
            profileItemModelObj.bpm!,
            style: CustomTextStyles.titleMediumWhiteA700,
          ),
        ],
      ),
    );
  }
}
