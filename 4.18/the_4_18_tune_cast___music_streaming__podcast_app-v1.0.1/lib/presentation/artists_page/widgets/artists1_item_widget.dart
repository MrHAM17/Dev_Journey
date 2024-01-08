import '../controller/artists_controller.dart';
import '../models/artists1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class Artists1ItemWidget extends StatelessWidget {
  Artists1ItemWidget(
    this.artists1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Artists1ItemModel artists1ItemModelObj;

  var controller = Get.find<ArtistsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 198.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: artists1ItemModelObj.theWeeknd!.value,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  radius: BorderRadius.circular(
                    40.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        artists1ItemModelObj.artistName!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Obx(
                      () => Text(
                        artists1ItemModelObj.songsCounter!.value,
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
          margin: EdgeInsets.symmetric(vertical: 30.v),
        ),
      ],
    );
  }
}
