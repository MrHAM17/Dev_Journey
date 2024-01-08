import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class SongplayoverscreenItemWidget extends StatelessWidget {
  SongplayoverscreenItemWidget({
    Key? key,
    this.onTapSongCard,
  }) : super(
          key: key,
        );

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
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 223.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage60,
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 18.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Starboy",
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              "The Weeknd, Daft Punk",
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgIconlyBoldPlayOnprimarycontainer,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 24.v),
                ),
              ],
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
