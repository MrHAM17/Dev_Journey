import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/downloaded_item_model.dart';
import 'package:the_6_14_jusplay___movie_streaming_app/presentation/downloaded_page/models/downloaded_model.dart';
part 'downloaded_state.dart';

final downloadedNotifier =
    StateNotifierProvider<DownloadedNotifier, DownloadedState>(
  (ref) => DownloadedNotifier(DownloadedState(
    downloadedModelObj: DownloadedModel(downloadedItemList: [
      DownloadedItemModel(
          image: ImageConstant.imgRectangle12103,
          actionAdventure: "Action, Adventure",
          twentyThousandFiveHundredThirt: "2:05:32",
          filesize: "1.2GB"),
      DownloadedItemModel(
          image: ImageConstant.imgRectangle12103112x112,
          actionAdventure: "Action, Adventure",
          twentyThousandFiveHundredThirt: "2:05:32",
          filesize: "1.2GB")
    ]),
  )),
);

/// A notifier that manages the state of a Downloaded according to the event that is dispatched to it.
class DownloadedNotifier extends StateNotifier<DownloadedState> {
  DownloadedNotifier(DownloadedState state) : super(state) {}
}
