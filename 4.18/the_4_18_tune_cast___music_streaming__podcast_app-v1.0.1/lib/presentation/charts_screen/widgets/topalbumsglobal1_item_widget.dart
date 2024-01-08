import '../controller/charts_controller.dart';
import '../models/topalbumsglobal1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class Topalbumsglobal1ItemWidget extends StatelessWidget {
  Topalbumsglobal1ItemWidget(
    this.topalbumsglobal1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Topalbumsglobal1ItemModel topalbumsglobal1ItemModelObj;

  var controller = Get.find<ChartsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 188.v,
            width: 184.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage5,
                  height: 188.v,
                  width: 184.h,
                  radius: BorderRadius.circular(
                    24.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 98.h,
                    child: Obx(
                      () => Text(
                        topalbumsglobal1ItemModelObj.price!.value,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineSmallWhiteA700.copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Obx(
            () => Text(
              topalbumsglobal1ItemModelObj.loremIpsumDolor!.value,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
