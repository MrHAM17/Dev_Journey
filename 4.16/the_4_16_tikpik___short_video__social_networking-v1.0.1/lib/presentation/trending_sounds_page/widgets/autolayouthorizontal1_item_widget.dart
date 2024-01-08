import '../controller/trending_sounds_controller.dart';
import '../models/autolayouthorizontal1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Autolayouthorizontal1ItemWidget extends StatelessWidget {
  Autolayouthorizontal1ItemWidget(
    this.autolayouthorizontal1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayouthorizontal1ItemModel autolayouthorizontal1ItemModelObj;

  var controller = Get.find<TrendingSoundsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.v,
      width: 121.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: autolayouthorizontal1ItemModelObj.k!.value,
              height: 200.v,
              width: 121.h,
              radius: BorderRadius.circular(
                12.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.fromLTRB(10.h, 174.v, 60.h, 10.v),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.circleBorder8,
              ),
              child: Row(
                children: [
                  CustomIconButton(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    padding: EdgeInsets.all(1.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgOverflowMenuPrimary16x16,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 2.v,
                    ),
                    child: Obx(
                      () => Text(
                        autolayouthorizontal1ItemModelObj.k1!.value,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
