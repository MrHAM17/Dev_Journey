import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';
import 'package:the_7_20_movie_streaming/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Specials3ItemWidget extends StatelessWidget {
  Specials3ItemWidget({
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
        child: Padding(
          padding: EdgeInsets.only(bottom: 20.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgThumbnailImage11,
                height: 140.v,
                width: 90.h,
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
                "Lukas",
                style: CustomTextStyles.bodySmallGray300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
