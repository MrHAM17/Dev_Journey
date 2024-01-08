import '../models/movies_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class MoviesItemWidget extends StatelessWidget {
  MoviesItemWidget(
    this.moviesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MoviesItemModel moviesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: moviesItemModelObj?.iONetflix,
            height: 180.v,
            width: 120.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              moviesItemModelObj.title!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 2.v),
          SizedBox(
            width: 120.h,
            child: Text(
              moviesItemModelObj.title1!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
