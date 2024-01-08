import '../models/artists_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class ArtistsItemWidget extends StatelessWidget {
  ArtistsItemWidget(
    this.artistsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtistsItemModel artistsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: artistsItemModelObj?.drDeath,
              height: 160.adaptSize,
              width: 160.adaptSize,
              radius: BorderRadius.circular(
                80.h,
              ),
            ),
            SizedBox(height: 25.v),
            Text(
              artistsItemModelObj.artistsName!,
              style: CustomTextStyles.titleMedium_1,
            ),
          ],
        ),
      ),
    );
  }
}
