import '../controller/mine_controller.dart';
import '../models/fifteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FifteenItemWidget extends StatelessWidget {
  FifteenItemWidget(
    this.fifteenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FifteenItemModel fifteenItemModelObj;

  var controller = Get.find<MineController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.fillGrayTL13,
            child: CustomImageView(
              imagePath: fifteenItemModelObj.vector!.value,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            top: 6.v,
            bottom: 3.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  fifteenItemModelObj.appleStore!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 4.v),
              Obx(
                () => Text(
                  fifteenItemModelObj.june!.value,
                  style: theme.textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 16.v,
            bottom: 15.v,
          ),
          child: Obx(
            () => Text(
              fifteenItemModelObj.price!.value,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ),
      ],
    );
  }
}
