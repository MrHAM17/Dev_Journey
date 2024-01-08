import '../controller/home_controller.dart';
import '../models/layout29_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout29ItemWidget extends StatelessWidget {
  Layout29ItemWidget(
    this.layout29ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout29ItemModel layout29ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: layout29ItemModelObj.amanda!.value,
                height: 70.adaptSize,
                width: 70.adaptSize,
                radius: BorderRadius.circular(
                  35.h,
                ),
              ),
            ),
            SizedBox(height: 9.v),
            Obx(
              () => Text(
                layout29ItemModelObj.amanda1!.value,
                style: CustomTextStyles.labelLargeMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
