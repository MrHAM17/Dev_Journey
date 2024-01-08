import '../controller/product_details_controller.dart';
import '../models/images_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_21_vertex___real_estate_app/core/app_export.dart';

// ignore: must_be_immutable
class ImagesItemWidget extends StatelessWidget {
  ImagesItemWidget(
    this.imagesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ImagesItemModel imagesItemModelObj;

  var controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.h,
      child: Obx(
        () => CustomImageView(
          imagePath: imagesItemModelObj.one!.value,
          height: 130.v,
          width: 100.h,
        ),
      ),
    );
  }
}
