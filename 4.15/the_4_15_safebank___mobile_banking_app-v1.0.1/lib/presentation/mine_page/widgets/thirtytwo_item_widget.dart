import '../controller/mine_controller.dart';
import '../models/thirtytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';

// ignore: must_be_immutable
class ThirtytwoItemWidget extends StatelessWidget {
  ThirtytwoItemWidget(
    this.thirtytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtytwoItemModel thirtytwoItemModelObj;

  var controller = Get.find<MineController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256.h,
      child: Obx(
        () => CustomImageView(
          imagePath: thirtytwoItemModelObj.frame!.value,
          height: 163.v,
          width: 256.h,
        ),
      ),
    );
  }
}
