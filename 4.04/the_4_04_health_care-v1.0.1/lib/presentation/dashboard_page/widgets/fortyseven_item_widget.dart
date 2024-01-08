import '../controller/dashboard_controller.dart';
import '../models/fortyseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_04_health_care/core/app_export.dart';
import 'package:the_4_04_health_care/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FortysevenItemWidget extends StatelessWidget {
  FortysevenItemWidget(
    this.fortysevenItemModelObj, {
    Key? key,
    this.onTapBtnTicket,
  }) : super(
          key: key,
        );

  FortysevenItemModel fortysevenItemModelObj;

  var controller = Get.find<DashboardController>();

  VoidCallback? onTapBtnTicket;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71.h,
      child: Obx(
        () => CustomIconButton(
          height: 71.adaptSize,
          width: 71.adaptSize,
          padding: EdgeInsets.all(16.h),
          decoration: IconButtonStyleHelper.fillCyan,
          onTap: () {
            onTapBtnTicket!.call();
          },
          child: CustomImageView(
            imagePath: fortysevenItemModelObj.ticket!.value,
          ),
        ),
      ),
    );
  }
}
