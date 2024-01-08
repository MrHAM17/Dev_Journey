import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/artist_item_model.dart';
import 'package:the_6_02_music_player/presentation/artists_screen/models/artists_model.dart';
part 'artists_state.dart';

final artistsNotifier = StateNotifierProvider<ArtistsNotifier, ArtistsState>(
    (ref) => ArtistsNotifier(ArtistsState(
            artistsModelObj: ArtistsModel(artistItemList: [
          ArtistItemModel(
              lorn: ImageConstant.imgPhoto876x78,
              renaissance: "Lorn",
              podvalCaplella: "843 tracks . 23 albums"),
          ArtistItemModel(
              lorn: ImageConstant.imgPhoto87,
              renaissance: "Danheim",
              podvalCaplella: "843 tracks . 23 albums"),
          ArtistItemModel(
              lorn: ImageConstant.imgPhoto88,
              renaissance: "Brand X Music",
              podvalCaplella: "843 tracks . 23 albums"),
          ArtistItemModel(
              lorn: ImageConstant.imgPhoto89,
              renaissance: "Damned Anthem",
              podvalCaplella: "843 tracks . 23 albums"),
          ArtistItemModel(
              lorn: ImageConstant.imgPhoto810,
              renaissance: "BONES",
              podvalCaplella: "843 tracks . 23 albums"),
          ArtistItemModel(
              lorn: ImageConstant.imgPhoto811,
              renaissance: "Epic North",
              podvalCaplella: "843 tracks . 23 albums")
        ]))));

/// A notifier that manages the state of a Artists according to the event that is dispatched to it.
class ArtistsNotifier extends StateNotifier<ArtistsState> {
  ArtistsNotifier(ArtistsState state) : super(state);
}
