import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class SeemorefiveItemWidget extends StatelessWidget {
  SeemorefiveItemWidget({
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMovieCard!.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbnailImage140x98,
            height: 140.v,
            width: 98.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "Dark Tower",
            style: CustomTextStyles.bodySmallGray300,
          ),
        ],
      ),
    );
  }
}
