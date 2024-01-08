import '../controller/main_landing_controller.dart';
import '../models/mainlanding_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_08_shopsie___e_commerce_app/core/app_export.dart';

// ignore: must_be_immutable
class MainlandingItemWidget extends StatelessWidget {
  MainlandingItemWidget(
    this.mainlandingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MainlandingItemModel mainlandingItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: mainlandingItemModelObj.image!.value,
        height: 58.v,
        width: 80.h,
      ),
    );
  }
}
