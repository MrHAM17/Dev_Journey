import '../models/searchresultalbum_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultalbumItemWidget extends StatelessWidget {
  SearchresultalbumItemWidget(
    this.searchresultalbumItemModelObj, {
    Key? key,
    this.onTapCardBig,
  }) : super(
          key: key,
        );

  SearchresultalbumItemModel searchresultalbumItemModelObj;

  VoidCallback? onTapCardBig;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCardBig!.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: searchresultalbumItemModelObj?.sweetener,
            height: 184.adaptSize,
            width: 184.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            searchresultalbumItemModelObj.positions!,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 5.v),
          Text(
            searchresultalbumItemModelObj.arianaGrande!,
            style: CustomTextStyles.titleSmallGray70001,
          ),
          SizedBox(height: 7.v),
          Text(
            searchresultalbumItemModelObj.zipcode!,
            style: CustomTextStyles.titleSmallGray70001,
          ),
        ],
      ),
    );
  }
}
