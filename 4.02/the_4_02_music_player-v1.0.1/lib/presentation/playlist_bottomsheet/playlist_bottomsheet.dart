import '../playlist_bottomsheet/widgets/playlist_item_widget.dart';
import 'controller/playlist_controller.dart';
import 'models/playlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_02_music_player/core/app_export.dart';

class PlaylistBottomsheet extends StatelessWidget {
  PlaylistBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PlaylistController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 729.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 729.v,
                width: double.maxFinite,
              ),
            ),
            _buildSeventyNine(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount:
            controller.playlistModelObj.value.playlistItemList.value.length,
        itemBuilder: (context, index) {
          PlaylistItemModel model =
              controller.playlistModelObj.value.playlistItemList.value[index];
          return PlaylistItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyNine() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          top: 13.v,
          right: 24.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.445,
              child: Container(
                height: 5.v,
                width: 35.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                ),
              ),
            ),
            SizedBox(height: 35.v),
            _buildPlaylist(),
          ],
        ),
      ),
    );
  }
}
