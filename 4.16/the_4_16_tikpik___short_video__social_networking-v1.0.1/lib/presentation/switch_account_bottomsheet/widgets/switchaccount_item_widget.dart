import '../controller/switch_account_controller.dart';
import '../models/switchaccount_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class SwitchaccountItemWidget extends StatelessWidget {
  SwitchaccountItemWidget(
    this.switchaccountItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SwitchaccountItemModel switchaccountItemModelObj;

  var controller = Get.find<SwitchAccountController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 208.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: switchaccountItemModelObj.andrewAinsley!.value,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        switchaccountItemModelObj.name!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Obx(
                      () => Text(
                        switchaccountItemModelObj.information!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => CustomImageView(
            imagePath: switchaccountItemModelObj.andrewAinsley1!.value,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 16.v),
          ),
        ),
      ],
    );
  }
}
