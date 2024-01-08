import '../models/exploreeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class ExploreeightItemWidget extends StatelessWidget {
  ExploreeightItemWidget(
    this.exploreeightItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  ExploreeightItemModel exploreeightItemModelObj;

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
            imagePath: exploreeightItemModelObj?.io,
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
              exploreeightItemModelObj.title!,
              style: CustomTextStyles.labelLargeWhiteA700,
            ),
          ),
          SizedBox(height: 2.v),
          Text(
            exploreeightItemModelObj.title1!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
