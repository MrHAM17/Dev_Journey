import '../controller/dashboard_controller.dart';
import '../models/specials4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class Specials4ItemWidget extends StatelessWidget {
  Specials4ItemWidget(
    this.specials4ItemModelObj, {
    Key? key,
    this.onTapImgDrama,
  }) : super(
          key: key,
        );

  Specials4ItemModel specials4ItemModelObj;

  var controller = Get.find<DashboardController>();

  VoidCallback? onTapImgDrama;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.v,
      width: 90.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: specials4ItemModelObj.drama!.value,
              height: 60.v,
              width: 90.h,
              radius: BorderRadius.circular(
                2.h,
              ),
              alignment: Alignment.center,
              onTap: () {
                onTapImgDrama!.call();
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.87,
              child: Obx(
                () => Text(
                  specials4ItemModelObj.drama1!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
