import '../models/movies8_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class Movies8ItemWidget extends StatelessWidget {
  Movies8ItemWidget(
    this.movies8ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Movies8ItemModel movies8ItemModelObj;

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
                imagePath: movies8ItemModelObj?.turnerHooch,
                height: 180.v,
                width: 120.h,
                radius: BorderRadius.circular(
                  2.h,
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                movies8ItemModelObj.title!,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 3.v),
              Text(
                movies8ItemModelObj.title1!,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
