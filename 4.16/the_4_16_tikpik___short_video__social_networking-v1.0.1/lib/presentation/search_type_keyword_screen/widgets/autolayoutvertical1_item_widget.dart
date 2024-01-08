import '../controller/search_type_keyword_controller.dart';
import '../models/autolayoutvertical1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class Autolayoutvertical1ItemWidget extends StatelessWidget {
  Autolayoutvertical1ItemWidget(
    this.autolayoutvertical1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayoutvertical1ItemModel autolayoutvertical1ItemModelObj;

  var controller = Get.find<SearchTypeKeywordController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 3.v,
          ),
          child: Obx(
            () => Text(
              autolayoutvertical1ItemModelObj.theresaWebb!.value,
              style: CustomTextStyles.titleMediumGray600Medium,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesXClose,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
      ],
    );
  }
}
