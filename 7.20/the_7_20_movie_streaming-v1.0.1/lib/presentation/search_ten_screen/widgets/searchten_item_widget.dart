import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';
import 'package:the_7_20_movie_streaming/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class SearchtenItemWidget extends StatelessWidget {
  SearchtenItemWidget({
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 98.h,
      child: GestureDetector(
        onTap: () {
          onTapMovieCard!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnailImage20,
              height: 140.v,
              width: 98.h,
              radius: BorderRadius.circular(
                2.h,
              ),
            ),
            SizedBox(height: 8.v),
            CustomRatingBar(
              ignoreGestures: true,
              initialRating: 0,
            ),
            SizedBox(height: 5.v),
            Text(
              "Jallikatta",
              style: CustomTextStyles.bodySmallGray300,
            ),
          ],
        ),
      ),
    );
  }
}
