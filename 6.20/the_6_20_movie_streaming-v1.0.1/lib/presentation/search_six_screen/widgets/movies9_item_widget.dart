import '../models/movies9_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class Movies9ItemWidget extends StatelessWidget {
  Movies9ItemWidget(
    this.movies9ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Movies9ItemModel movies9ItemModelObj;

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
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
                imagePath: movies9ItemModelObj?.turnerHooch,
                height: 180.v,
                width: 120.h,
                radius: BorderRadius.circular(
                  2.h,
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                movies9ItemModelObj.title!,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 3.v),
              Text(
                movies9ItemModelObj.title1!,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
