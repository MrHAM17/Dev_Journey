import '../models/specials5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Specials5ItemWidget extends StatelessWidget {
  Specials5ItemWidget(
    this.specials5ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Specials5ItemModel specials5ItemModelObj;

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
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: specials5ItemModelObj?.thePerfection,
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
                specials5ItemModelObj.title!,
                style: CustomTextStyles.bodySmallGray300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
