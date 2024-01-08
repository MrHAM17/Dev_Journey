import '../controller/trending_hashtag_details_controller.dart';
import '../models/autolayoutvertical4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Autolayoutvertical4ItemWidget extends StatelessWidget {
  Autolayoutvertical4ItemWidget(
    this.autolayoutvertical4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayoutvertical4ItemModel autolayoutvertical4ItemModelObj;

  var controller = Get.find<TrendingHashtagDetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.v,
      width: 122.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: autolayoutvertical4ItemModelObj.k!.value,
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
                    () => CustomIconButton(
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      padding: EdgeInsets.all(1.h),
                      child: CustomImageView(
                        imagePath:
                            autolayoutvertical4ItemModelObj.overflowMenu!.value,
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
                        autolayoutvertical4ItemModelObj.k1!.value,
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
