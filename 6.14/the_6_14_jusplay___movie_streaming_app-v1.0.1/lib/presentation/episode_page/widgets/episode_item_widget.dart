import '../models/episode_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class EpisodeItemWidget extends StatelessWidget {
  EpisodeItemWidget(
    this.episodeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EpisodeItemModel episodeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 131.adaptSize,
            width: 131.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12046,
                  height: 131.adaptSize,
                  width: 131.adaptSize,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.v),
            child: Column(
              children: [
                SizedBox(
                  width: 180.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        episodeItemModelObj.trailer!,
                        style: theme.textTheme.titleSmall,
                      ),
                      CustomImageView(
                        imagePath: episodeItemModelObj?.trailer1,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 3.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13.v),
                SizedBox(
                  width: 175.h,
                  child: Text(
                    episodeItemModelObj.aladdinAStreet!,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallPrimaryContainer.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
