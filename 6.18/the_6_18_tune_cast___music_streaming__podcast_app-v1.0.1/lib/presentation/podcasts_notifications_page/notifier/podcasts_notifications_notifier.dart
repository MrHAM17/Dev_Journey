import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/podcastsnotifications_item_model.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/podcasts_notifications_page/models/podcasts_notifications_model.dart';
part 'podcasts_notifications_state.dart';

final podcastsNotificationsNotifier = StateNotifierProvider<
    PodcastsNotificationsNotifier, PodcastsNotificationsState>(
  (ref) => PodcastsNotificationsNotifier(PodcastsNotificationsState(
    podcastsNotificationsModelObj:
        PodcastsNotificationsModel(podcastsnotificationsItemList: [
      PodcastsnotificationsItemModel(
          image: ImageConstant.imgImage80x80,
          tristanHarris: "837: Tristan Harris | Reclaiming Our Future with ...",
          appleTalk: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite,
          image2: ImageConstant.imgCategoriesPlaylist,
          appleTalk1: ImageConstant.imgIconlyLightOutlineArrowGray90001,
          appleTalk2: ImageConstant.imgCategoriesMore,
          iconlyBoldPlay: ImageConstant.imgIconlyBoldPlay),
      PodcastsnotificationsItemModel(
          image: ImageConstant.imgImage116x116,
          tristanHarris: "593: Dallas Taylor | The Psychology of Sound Design",
          appleTalk: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavorite,
          image2: ImageConstant.imgCategoriesPlaylist,
          appleTalk1: ImageConstant.imgIconlyLightOutlineArrowGray90001,
          appleTalk2: ImageConstant.imgCategoriesMore,
          iconlyBoldPlay: ImageConstant.imgIconlyBoldPlay),
      PodcastsnotificationsItemModel(
          image: ImageConstant.imgImage13,
          tristanHarris:
              "690: Jane McGonigal | How to See the Future and Be Ready..",
          appleTalk: "The Jordan Harbinger ...",
          text: "|",
          time: "45:49 mins",
          image1: ImageConstant.imgFavorite,
          image2: ImageConstant.imgCategoriesPlaylist,
          appleTalk1: ImageConstant.imgIconlyLightOutlineArrowGray90001,
          appleTalk2: ImageConstant.imgCategoriesMore,
          iconlyBoldPlay: ImageConstant.imgIconlyBoldPlay),
      PodcastsnotificationsItemModel(
          image: ImageConstant.imgImage14,
          tristanHarris:
              "621: Reid Hoffman | Surprising Entrepreneurial Truths",
          appleTalk: "Invest Like The Best",
          text: "|",
          time: "52:20 mins",
          image1: ImageConstant.imgFavorite,
          image2: ImageConstant.imgCategoriesPlaylist,
          appleTalk1: ImageConstant.imgIconlyLightOutlineArrowGray90001,
          appleTalk2: ImageConstant.imgCategoriesMore,
          iconlyBoldPlay: ImageConstant.imgIconlyBoldPlay),
      PodcastsnotificationsItemModel(
          image: ImageConstant.imgImage15,
          tristanHarris:
              "687: Amy Webb | Changing Lives with Synthetic Biology",
          appleTalk: "SaaS & Scotch",
          text: "|",
          time: "38:29 mins",
          image1: ImageConstant.imgFavorite,
          image2: ImageConstant.imgCategoriesPlaylist,
          appleTalk1: ImageConstant.imgIconlyLightOutlineArrowGray90001,
          appleTalk2: ImageConstant.imgCategoriesMore,
          iconlyBoldPlay: ImageConstant.imgIconlyBoldPlay)
    ]),
  )),
);

/// A notifier that manages the state of a PodcastsNotifications according to the event that is dispatched to it.
class PodcastsNotificationsNotifier
    extends StateNotifier<PodcastsNotificationsState> {
  PodcastsNotificationsNotifier(PodcastsNotificationsState state)
      : super(state) {}
}
