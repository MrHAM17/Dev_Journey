import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/podcasters_item_model.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/podcasters_page/models/podcasters_model.dart';
part 'podcasters_state.dart';

final podcastersNotifier =
    StateNotifierProvider<PodcastersNotifier, PodcastersState>(
  (ref) => PodcastersNotifier(PodcastersState(
    podcastersModelObj: PodcastersModel(podcastersItemList: [
      PodcastersItemModel(
          image: ImageConstant.imgImage80x80,
          artistName: "The Jordan Harbinger Show",
          episodesCounter: "692 Episodes"),
      PodcastersItemModel(
          image: ImageConstant.imgImage80x80,
          artistName: "Invest Like The Best",
          episodesCounter: "493 Episodes"),
      PodcastersItemModel(
          image: ImageConstant.imgImage95,
          artistName: "The Breakfast Club",
          episodesCounter: "682 Episodes"),
      PodcastersItemModel(
          image: ImageConstant.imgImage80x80,
          artistName: "What a Day",
          episodesCounter: "934 Episodes"),
      PodcastersItemModel(
          image: ImageConstant.imgImage97,
          artistName: "SaaS & Scotch",
          episodesCounter: "837 Episodes")
    ]),
  )),
);

/// A notifier that manages the state of a Podcasters according to the event that is dispatched to it.
class PodcastersNotifier extends StateNotifier<PodcastersState> {
  PodcastersNotifier(PodcastersState state) : super(state) {}
}
