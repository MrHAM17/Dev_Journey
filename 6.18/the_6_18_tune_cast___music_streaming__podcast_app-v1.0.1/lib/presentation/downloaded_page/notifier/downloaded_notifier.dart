import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/downloaded_item_model.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/downloaded_page/models/downloaded_model.dart';
part 'downloaded_state.dart';

final downloadedNotifier =
    StateNotifierProvider<DownloadedNotifier, DownloadedState>(
  (ref) => DownloadedNotifier(DownloadedState(
    downloadedModelObj: DownloadedModel(downloadedItemList: [
      DownloadedItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite),
      DownloadedItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer),
      DownloadedItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite),
      DownloadedItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer)
    ]),
  )),
);

/// A notifier that manages the state of a Downloaded according to the event that is dispatched to it.
class DownloadedNotifier extends StateNotifier<DownloadedState> {
  DownloadedNotifier(DownloadedState state) : super(state) {}
}
