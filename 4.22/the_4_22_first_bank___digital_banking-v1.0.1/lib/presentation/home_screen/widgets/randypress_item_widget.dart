import '../controller/home_controller.dart';
import '../models/randypress_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';

// ignore: must_be_immutable
class RandypressItemWidget extends StatelessWidget {
  RandypressItemWidget(
    this.randypressItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RandypressItemModel randypressItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: randypressItemModelObj.userImage!.value,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              randypressItemModelObj.text1!.value,
              style: TextStyle(
                color: appTheme.blueGray900,
                fontSize: 12.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              randypressItemModelObj.text2!.value,
              style: TextStyle(
                color: appTheme.blueGray40001,
                fontSize: 10.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
