import '../controller/home_controller.dart';
import '../models/layout28_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';

// ignore: must_be_immutable
class Layout28ItemWidget extends StatelessWidget {
  Layout28ItemWidget(
    this.layout28ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Layout28ItemModel layout28ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder28,
      ),
      width: 89.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: layout28ItemModelObj.bali!.value,
              height: 40.adaptSize,
              width: 40.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 10.v,
              bottom: 12.v,
            ),
            child: Obx(
              () => Text(
                layout28ItemModelObj.bali1!.value,
                style: CustomTextStyles.titleSmallMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
