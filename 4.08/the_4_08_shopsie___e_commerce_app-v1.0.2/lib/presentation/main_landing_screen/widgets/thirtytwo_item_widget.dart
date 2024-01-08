import '../controller/main_landing_controller.dart';
import '../models/thirtytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class ThirtytwoItemWidget extends StatelessWidget {
  ThirtytwoItemWidget(
    this.thirtytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtytwoItemModel thirtytwoItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: thirtytwoItemModelObj.outerwear!.value,
            height: 386.v,
            width: 358.h,
          ),
        ),
        SizedBox(height: 26.v),
        Obx(
          () => Text(
            thirtytwoItemModelObj.outerwear1!.value,
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        SizedBox(height: 6.v),
        Obx(
          () => Text(
            thirtytwoItemModelObj.raincoatsSweaters!.value,
            style: CustomTextStyles.bodySmallBluegray400,
          ),
        ),
      ],
    );
  }
}
