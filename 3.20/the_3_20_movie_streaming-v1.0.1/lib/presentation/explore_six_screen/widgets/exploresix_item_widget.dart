import '../models/exploresix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class ExploresixItemWidget extends StatelessWidget {
  ExploresixItemWidget(
    this.exploresixItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  ExploresixItemModel exploresixItemModelObj;

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
            imagePath: exploresixItemModelObj?.turnerHooch,
            height: 180.v,
            width: 120.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            exploresixItemModelObj.title!,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 3.v),
          Text(
            exploresixItemModelObj.title1!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
