import '../controller/category_comedy_controller.dart';
import '../models/categorycomedy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class CategorycomedyItemWidget extends StatelessWidget {
  CategorycomedyItemWidget(
    this.categorycomedyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategorycomedyItemModel categorycomedyItemModelObj;

  var controller = Get.find<CategoryComedyController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: categorycomedyItemModelObj.rectangle!.value,
        height: 140.v,
        width: 102.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
