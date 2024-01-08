import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultalbumItemWidget extends StatelessWidget {
  SearchresultalbumItemWidget({
    Key? key,
    this.onTapCardBig,
  }) : super(
          key: key,
        );

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
            imagePath: ImageConstant.imgImage70,
            height: 184.adaptSize,
            width: 184.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            "Sweetener",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 5.v),
          Text(
            "Ariana Grande",
            style: CustomTextStyles.titleSmallGray70001,
          ),
          SizedBox(height: 7.v),
          Text(
            "2018",
            style: CustomTextStyles.titleSmallGray70001,
          ),
        ],
      ),
    );
  }
}
