import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class Specials1ItemWidget extends StatelessWidget {
  Specials1ItemWidget({
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.h,
      child: GestureDetector(
        onTap: () {
          onTapMovieCard!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgThumbnailImage3,
              height: 140.v,
              width: 90.h,
              radius: BorderRadius.circular(
                2.h,
              ),
            ),
            SizedBox(height: 9.v),
            SizedBox(
              width: 65.h,
              child: Text(
                "Jumanji The Next Level",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray300.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
