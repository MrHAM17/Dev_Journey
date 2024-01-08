import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/artists1_item_model.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/artists_page/models/artists_model.dart';
part 'artists_state.dart';

final artistsNotifier = StateNotifierProvider<ArtistsNotifier, ArtistsState>(
  (ref) => ArtistsNotifier(ArtistsState(
    artistsModelObj: ArtistsModel(artists1ItemList: [
      Artists1ItemModel(
          theWeeknd: ImageConstant.imgImage66,
          artistName: "The Weeknd",
          songsCounter: "20 Songs"),
      Artists1ItemModel(
          theWeeknd: ImageConstant.imgImage90,
          artistName: "Ariana Grande",
          songsCounter: "35 Songs"),
      Artists1ItemModel(
          theWeeknd: ImageConstant.imgImage91,
          artistName: "Ania Szarmarch",
          songsCounter: "15 Songs"),
      Artists1ItemModel(
          theWeeknd: ImageConstant.imgImage93,
          artistName: "Ryan Jones",
          songsCounter: "24 Songs"),
      Artists1ItemModel(
          theWeeknd: ImageConstant.imgImage94,
          artistName: "Sweet Sexy Savage",
          songsCounter: "20 Songs")
    ]),
  )),
);

/// A notifier that manages the state of a Artists according to the event that is dispatched to it.
class ArtistsNotifier extends StateNotifier<ArtistsState> {
  ArtistsNotifier(ArtistsState state) : super(state) {}
}
