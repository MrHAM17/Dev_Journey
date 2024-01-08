import '../models/playlistdetailsone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PlaylistdetailsoneItemWidget extends StatelessWidget {
  PlaylistdetailsoneItemWidget(
    this.playlistdetailsoneItemModelObj, {
    Key? key,
    this.onTapSongCard,
  }) : super(
          key: key,
        );

  PlaylistdetailsoneItemModel playlistdetailsoneItemModelObj;

  VoidCallback? onTapSongCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSongCard!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: playlistdetailsoneItemModelObj?.image,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 17.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playlistdetailsoneItemModelObj.songTitle!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 7.v),
                Text(
                  playlistdetailsoneItemModelObj.details!,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.v),
            child: CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(2.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgOverflowMenuOnprimarycontainer,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCategoriesMore,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 30.v,
              bottom: 30.v,
            ),
          ),
        ],
      ),
    );
  }
}
