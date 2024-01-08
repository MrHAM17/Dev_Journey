import '../models/searchtypekeyword_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class SearchtypekeywordItemWidget extends StatelessWidget {
  SearchtypekeywordItemWidget(
    this.searchtypekeywordItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchtypekeywordItemModel searchtypekeywordItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            searchtypekeywordItemModelObj.arianaGrande!,
            style: CustomTextStyles.titleMediumGray600,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesXClose,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
