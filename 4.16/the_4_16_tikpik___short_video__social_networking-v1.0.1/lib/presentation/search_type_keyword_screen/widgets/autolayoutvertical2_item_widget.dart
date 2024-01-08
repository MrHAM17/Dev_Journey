import '../controller/search_type_keyword_controller.dart';
import '../models/autolayoutvertical2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class Autolayoutvertical2ItemWidget extends StatelessWidget {
  Autolayoutvertical2ItemWidget(
    this.autolayoutvertical2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayoutvertical2ItemModel autolayoutvertical2ItemModelObj;

  var controller = Get.find<SearchTypeKeywordController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Obx(
            () => Text(
              autolayoutvertical2ItemModelObj.arianaGrande!.value,
              style: CustomTextStyles.titleMediumGray600Medium,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRewindGray500,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
