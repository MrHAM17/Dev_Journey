import '../models/movies1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class Movies1ItemWidget extends StatelessWidget {
  Movies1ItemWidget(
    this.movies1ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Movies1ItemModel movies1ItemModelObj;

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: GestureDetector(
        onTap: () {
          onTapMovieCard!.call();
        },
        child: Column(
          children: [
            CustomImageView(
              imagePath: movies1ItemModelObj?.iONetflix,
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
                movies1ItemModelObj.title!,
                style: theme.textTheme.labelLarge,
              ),
            ),
            SizedBox(height: 2.v),
            SizedBox(
              width: 120.h,
              child: Text(
                movies1ItemModelObj.title1!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
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
