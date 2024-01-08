import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/queue_item_model.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/queue_page/models/queue_model.dart';
part 'queue_state.dart';

final queueNotifier = StateNotifierProvider<QueueNotifier, QueueState>(
  (ref) => QueueNotifier(QueueState(
    queueModelObj: QueueModel(queueItemList: [
      QueueItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite,
          image2: ImageConstant.imgCategoriesPlaylist,
          appleTalk: ImageConstant.imgIconlyLightOutlineArrowGray90001),
      QueueItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer,
          image2: ImageConstant.imgCheckmarkOnprimarycontainer),
      QueueItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite,
          image2: ImageConstant.imgCategoriesPlaylist,
          appleTalk: ImageConstant.imgIconlyLightOutlineArrowGray90001),
      QueueItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer,
          image2: ImageConstant.imgCheckmarkOnprimarycontainer,
          appleTalk: ImageConstant.imgIconlyLightOutlineArrowGray90001)
    ]),
  )),
);

/// A notifier that manages the state of a Queue according to the event that is dispatched to it.
class QueueNotifier extends StateNotifier<QueueState> {
  QueueNotifier(QueueState state) : super(state) {}
}
