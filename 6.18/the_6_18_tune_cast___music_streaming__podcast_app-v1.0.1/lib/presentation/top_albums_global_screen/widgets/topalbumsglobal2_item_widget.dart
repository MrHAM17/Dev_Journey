import '../models/topalbumsglobal2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Topalbumsglobal2ItemWidget extends StatelessWidget {
  Topalbumsglobal2ItemWidget(
    this.topalbumsglobal2ItemModelObj, {
    Key? key,
    this.onTapSongCard,
  }) : super(
          key: key,
        );

  Topalbumsglobal2ItemModel topalbumsglobal2ItemModelObj;

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
          Padding(
            padding: EdgeInsets.only(
              top: 28.v,
              bottom: 29.v,
            ),
            child: Text(
              topalbumsglobal2ItemModelObj.zero!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          CustomImageView(
            imagePath: topalbumsglobal2ItemModelObj?.image,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(left: 27.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topalbumsglobal2ItemModelObj.songTitle!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 9.v),
                Text(
                  topalbumsglobal2ItemModelObj.details!,
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
                imagePath: topalbumsglobal2ItemModelObj?.overflowMenu,
              ),
            ),
          ),
          CustomImageView(
            imagePath: topalbumsglobal2ItemModelObj?.image1,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 28.v,
              bottom: 29.v,
            ),
          ),
        ],
      ),
    );
  }
}
