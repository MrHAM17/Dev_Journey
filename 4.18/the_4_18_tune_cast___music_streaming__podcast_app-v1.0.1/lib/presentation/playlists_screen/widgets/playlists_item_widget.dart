import '../controller/playlists_controller.dart';
import '../models/playlists_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class PlaylistsItemWidget extends StatelessWidget {
  PlaylistsItemWidget(
    this.playlistsItemModelObj, {
    Key? key,
    this.onTapTypeListThemeLight,
  }) : super(
          key: key,
        );

  PlaylistsItemModel playlistsItemModelObj;

  var controller = Get.find<PlaylistsController>();

  VoidCallback? onTapTypeListThemeLight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTypeListThemeLight!.call();
      },
      child: Row(
        children: [
          Container(
            height: 80.adaptSize,
            width: 80.adaptSize,
            padding: EdgeInsets.all(24.h),
            decoration: AppDecoration.gradientRedToOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: playlistsItemModelObj.addNewPlaylist!.value,
                height: 32.adaptSize,
                width: 32.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 30.v,
              bottom: 27.v,
            ),
            child: Obx(
              () => Text(
                playlistsItemModelObj.loremIpsum!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
