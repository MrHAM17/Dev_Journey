import '../controller/trending_sounds_details_controller.dart';
import '../models/autolayoutvertical3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Autolayoutvertical3ItemWidget extends StatelessWidget {
  Autolayoutvertical3ItemWidget(
    this.autolayoutvertical3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayoutvertical3ItemModel autolayoutvertical3ItemModelObj;

  var controller = Get.find<TrendingSoundsDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200.v,
              width: 122.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: autolayoutvertical3ItemModelObj.k!.value,
                      height: 200.v,
                      width: 122.h,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        bottom: 10.v,
                      ),
                      child: Row(
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath:
                                  autolayoutvertical3ItemModelObj.k1!.value,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                            ),
                            child: Obx(
                              () => Text(
                                autolayoutvertical3ItemModelObj.k2!.value,
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
            ),
            Container(
              height: 200.v,
              width: 122.h,
              margin: EdgeInsets.only(left: 7.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: autolayoutvertical3ItemModelObj.k3!.value,
                      height: 200.v,
                      width: 122.h,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 9.h,
                        bottom: 10.v,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            padding: EdgeInsets.all(1.h),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgOverflowMenuPrimary16x16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                            ),
                            child: Obx(
                              () => Text(
                                autolayoutvertical3ItemModelObj.k4!.value,
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
            ),
          ],
        ),
        SizedBox(height: 8.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200.v,
              width: 122.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: autolayoutvertical3ItemModelObj.k5!.value,
                      height: 200.v,
                      width: 122.h,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        bottom: 10.v,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            padding: EdgeInsets.all(1.h),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgOverflowMenuPrimary16x16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                            ),
                            child: Obx(
                              () => Text(
                                autolayoutvertical3ItemModelObj.k6!.value,
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
            ),
            Container(
              height: 200.v,
              width: 122.h,
              margin: EdgeInsets.only(left: 7.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: autolayoutvertical3ItemModelObj.k7!.value,
                      height: 200.v,
                      width: 122.h,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 9.h,
                        bottom: 10.v,
                      ),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            padding: EdgeInsets.all(1.h),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgOverflowMenuPrimary16x16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                            ),
                            child: Obx(
                              () => Text(
                                autolayoutvertical3ItemModelObj.k8!.value,
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
            ),
          ],
        ),
      ],
    );
  }
}
