import '../models/podcasts_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class PodcastsItemWidget extends StatelessWidget {
  PodcastsItemWidget(
    this.podcastsItemModelObj, {
    Key? key,
    this.onTapExploreCard,
  }) : super(
          key: key,
        );

  PodcastsItemModel podcastsItemModelObj;

  VoidCallback? onTapExploreCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapExploreCard!.call();
      },
      child: Container(
        decoration: AppDecoration.gradientRedToOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 21.v,
                bottom: 76.v,
              ),
              child: Text(
                podcastsItemModelObj.categories!,
                style: CustomTextStyles.titleMediumWhiteA700_1,
              ),
            ),
            CustomImageView(
              imagePath: podcastsItemModelObj?.charts,
              height: 91.v,
              width: 81.h,
              radius: BorderRadius.circular(
                12.h,
              ),
              margin: EdgeInsets.only(
                left: 27.h,
                top: 29.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}