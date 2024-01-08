import '../models/autolayoutvertical1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore: must_be_immutable
class Autolayoutvertical1ItemWidget extends StatelessWidget {
  Autolayoutvertical1ItemWidget(
    this.autolayoutvertical1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Autolayoutvertical1ItemModel autolayoutvertical1ItemModelObj;

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
          child: Text(
            autolayoutvertical1ItemModelObj.theresaWebb!,
            style: CustomTextStyles.titleMediumGray600Medium,
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
