import '../controller/search_controller.dart';
import '../models/frame6_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class Frame6ItemWidget extends StatelessWidget {
  Frame6ItemWidget(
    this.frame6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame6ItemModel frame6ItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98.h,
      child: Obx(
        () => CustomImageView(
          imagePath: frame6ItemModelObj.rectangle!.value,
          height: 135.v,
          width: 98.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
