import '../controller/home_controller.dart';
import '../models/sixtyseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SixtysevenItemWidget extends StatelessWidget {
  SixtysevenItemWidget(
    this.sixtysevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SixtysevenItemModel sixtysevenItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: Obx(
        () => CustomIconButton(
          height: 49.v,
          width: 48.h,
          padding: EdgeInsets.all(15.h),
          decoration: IconButtonStyleHelper.outlineBlueGrayF,
          child: CustomImageView(
            imagePath: sixtysevenItemModelObj.close!.value,
          ),
        ),
      ),
    );
  }
}
