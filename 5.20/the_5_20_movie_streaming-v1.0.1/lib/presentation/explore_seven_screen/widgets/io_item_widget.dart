import '../models/io_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class IoItemWidget extends StatelessWidget {
  IoItemWidget(
    this.ioItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  IoItemModel ioItemModelObj;

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMovieCard!.call();
      },
      child: Column(
        children: [
          CustomImageView(
            imagePath: ioItemModelObj?.io,
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
              ioItemModelObj.title!,
              style: CustomTextStyles.labelLargeWhiteA700,
            ),
          ),
          SizedBox(height: 2.v),
          Text(
            ioItemModelObj.title1!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
