import '../controller/podcasts_controller.dart';
import '../models/artists_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class ArtistsItemWidget extends StatelessWidget {
  ArtistsItemWidget(
    this.artistsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtistsItemModel artistsItemModelObj;

  var controller = Get.find<PodcastsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: Column(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: artistsItemModelObj.drDeath!.value,
                height: 160.adaptSize,
                width: 160.adaptSize,
                radius: BorderRadius.circular(
                  80.h,
                ),
              ),
            ),
            SizedBox(height: 25.v),
            Obx(
              () => Text(
                artistsItemModelObj.artistsName!.value,
                style: CustomTextStyles.titleMedium_1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
