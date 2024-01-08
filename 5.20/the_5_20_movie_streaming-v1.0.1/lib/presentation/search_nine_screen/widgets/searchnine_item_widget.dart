import '../models/searchnine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class SearchnineItemWidget extends StatelessWidget {
  SearchnineItemWidget(
    this.searchnineItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  SearchnineItemModel searchnineItemModelObj;

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
            imagePath: searchnineItemModelObj?.jallikatta,
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
            searchnineItemModelObj.title!,
            style: CustomTextStyles.bodySmallGray300,
          ),
        ],
      ),
    );
  }
}
