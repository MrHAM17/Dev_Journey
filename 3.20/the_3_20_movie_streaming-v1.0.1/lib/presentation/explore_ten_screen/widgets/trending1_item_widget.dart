import '../models/trending1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class Trending1ItemWidget extends StatelessWidget {
  Trending1ItemWidget(
    this.trending1ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Trending1ItemModel trending1ItemModelObj;

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 312.h,
      child: GestureDetector(
        onTap: () {
          onTapMovieCard!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: trending1ItemModelObj?.darkPhoenix,
              height: 160.v,
              width: 312.h,
              radius: BorderRadius.circular(
                2.h,
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              trending1ItemModelObj.title!,
              style: CustomTextStyles.titleSmallMedium,
            ),
            SizedBox(height: 3.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    trending1ItemModelObj.subLabel!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Container(
                  height: 3.adaptSize,
                  width: 3.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 6.v,
                    bottom: 6.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Container(
                  width: 36.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        trending1ItemModelObj.star!,
                        style: theme.textTheme.bodySmall,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(
                          left: 3.h,
                          top: 2.v,
                          bottom: 4.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
