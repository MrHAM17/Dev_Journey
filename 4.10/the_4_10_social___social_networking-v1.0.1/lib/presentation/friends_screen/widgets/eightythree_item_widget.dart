import '../controller/friends_controller.dart';
import '../models/eightythree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_10_social___social_networking/core/app_export.dart';

// ignore: must_be_immutable
class EightythreeItemWidget extends StatelessWidget {
  EightythreeItemWidget(
    this.eightythreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EightythreeItemModel eightythreeItemModelObj;

  var controller = Get.find<FriendsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: Obx(
        () => CustomImageView(
          imagePath: eightythreeItemModelObj.trash!.value,
          height: 50.adaptSize,
          width: 50.adaptSize,
        ),
      ),
    );
  }
}
