import '../models/specials2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';
import 'package:the_6_20_movie_streaming/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class Specials2ItemWidget extends StatelessWidget {
  Specials2ItemWidget(
    this.specials2ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Specials2ItemModel specials2ItemModelObj;

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
                imagePath: specials2ItemModelObj?.iKillGiants,
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
                specials2ItemModelObj.title!,
                style: CustomTextStyles.bodySmallGray300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
