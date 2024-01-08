import '../playlist_bottomsheet/widgets/playlist_item_widget.dart';
import 'models/playlist_item_model.dart';
import 'notifier/playlist_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_02_music_player/core/app_export.dart';

// ignore_for_file: must_be_immutable
class PlaylistBottomsheet extends ConsumerStatefulWidget {
  const PlaylistBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  PlaylistBottomsheetState createState() => PlaylistBottomsheetState();
}

class PlaylistBottomsheetState extends ConsumerState<PlaylistBottomsheet> {
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
            _buildSeventyNine(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
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
          itemCount: ref
                  .watch(playlistNotifier)
                  .playlistModelObj
                  ?.playlistItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            PlaylistItemModel model = ref
                    .watch(playlistNotifier)
                    .playlistModelObj
                    ?.playlistItemList[index] ??
                PlaylistItemModel();
            return PlaylistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSeventyNine(BuildContext context) {
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
            _buildPlaylist(context),
          ],
        ),
      ),
    );
  }
}
