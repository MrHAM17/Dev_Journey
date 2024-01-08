import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class TurnerhoochItemWidget extends StatelessWidget {
  TurnerhoochItemWidget({
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
            imagePath: ImageConstant.imgThumbnailImage1,
            height: 180.v,
            width: 120.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "Turner & Hooch",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 3.v),
          Text(
            "Sub-Title",
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
