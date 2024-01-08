import '../models/newreleases_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class NewreleasesItemWidget extends StatelessWidget {
  NewreleasesItemWidget(
    this.newreleasesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NewreleasesItemModel newreleasesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: newreleasesItemModelObj?.positions,
            height: 184.adaptSize,
            width: 184.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            newreleasesItemModelObj.positions1!,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 5.v),
          Text(
            newreleasesItemModelObj.arianaGrande!,
            style: CustomTextStyles.titleSmallGray70001,
          ),
        ],
      ),
    );
  }
}
