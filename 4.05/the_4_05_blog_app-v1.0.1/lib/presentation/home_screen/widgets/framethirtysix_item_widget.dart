import '../controller/home_controller.dart';
import '../models/framethirtysix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_05_blog_app/core/app_export.dart';

// ignore: must_be_immutable
class FramethirtysixItemWidget extends StatelessWidget {
  FramethirtysixItemWidget(
    this.framethirtysixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FramethirtysixItemModel framethirtysixItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnail,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(
                40.h,
              ),
            ),
            SizedBox(height: 9.v),
            SizedBox(
              width: 72.h,
              child: Obx(
                () => Text(
                  framethirtysixItemModelObj.loremIpsumIsA!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallBlack900.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
