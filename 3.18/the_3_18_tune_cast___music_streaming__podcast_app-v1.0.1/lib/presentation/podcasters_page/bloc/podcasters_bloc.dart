import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/podcasters_item_model.dart';
import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/podcasters_page/models/podcasters_model.dart';
part 'podcasters_event.dart';
part 'podcasters_state.dart';

/// A bloc that manages the state of a Podcasters according to the event that is dispatched to it.
class PodcastersBloc extends Bloc<PodcastersEvent, PodcastersState> {
  PodcastersBloc(PodcastersState initialState) : super(initialState) {
    on<PodcastersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PodcastersInitialEvent event,
    Emitter<PodcastersState> emit,
  ) async {
    emit(state.copyWith(
        podcastersModelObj: state.podcastersModelObj?.copyWith(
      podcastersItemList: fillPodcastersItemList(),
    )));
  }

  List<PodcastersItemModel> fillPodcastersItemList() {
    return [
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
    ];
  }
}
