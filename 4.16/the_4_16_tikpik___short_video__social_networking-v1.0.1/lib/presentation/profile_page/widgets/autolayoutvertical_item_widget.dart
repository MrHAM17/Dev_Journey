import '../controller/profile_controller.dart';
import '../models/autolayoutvertical_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AutolayoutverticalItemWidget extends StatelessWidget {
  AutolayoutverticalItemWidget(
    this.autolayoutverticalItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AutolayoutverticalItemModel autolayoutverticalItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 200.v,
          width: 121.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: autolayoutverticalItemModelObj.k!.value,
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
                      Obx(
                        () => CustomImageView(
                          imagePath: autolayoutverticalItemModelObj.k1!.value,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          radius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 2.v,
                        ),
                        child: Obx(
                          () => Text(
                            autolayoutverticalItemModelObj.k2!.value,
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
          width: 121.h,
          margin: EdgeInsets.only(left: 8.h),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: autolayoutverticalItemModelObj.k3!.value,
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
                  margin: EdgeInsets.fromLTRB(9.h, 174.v, 60.h, 10.v),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.circleBorder8,
                  ),
                  child: Row(
                    children: [
                      Obx(
                        () => CustomIconButton(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          padding: EdgeInsets.all(1.h),
                          child: CustomImageView(
                            imagePath: autolayoutverticalItemModelObj
                                .overflowMenu!.value,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 2.v,
                        ),
                        child: Obx(
                          () => Text(
                            autolayoutverticalItemModelObj.k4!.value,
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
    );
  }
}
