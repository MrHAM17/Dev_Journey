import '../controller/profile_controller.dart';
import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_06_helthio___telehealth/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(
    this.profileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 61.h,
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: profileItemModelObj.heartrate!.value,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
          ),
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              profileItemModelObj.heartRate!.value,
              style: CustomTextStyles.labelMediumBlue50,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              profileItemModelObj.bpm!.value,
              style: CustomTextStyles.titleMediumWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
