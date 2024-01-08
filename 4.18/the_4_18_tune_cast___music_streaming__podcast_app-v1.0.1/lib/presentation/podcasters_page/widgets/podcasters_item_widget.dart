import '../controller/podcasters_controller.dart';
import '../models/podcasters_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class PodcastersItemWidget extends StatelessWidget {
  PodcastersItemWidget(
    this.podcastersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PodcastersItemModel podcastersItemModelObj;

  var controller = Get.find<PodcastersController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: podcastersItemModelObj.image!.value,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 17.v,
                  bottom: 14.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        podcastersItemModelObj.artistName!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Obx(
                      () => Text(
                        podcastersItemModelObj.episodesCounter!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesMore,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 36.h,
            top: 30.v,
            bottom: 30.v,
          ),
        ),
      ],
    );
  }
}
