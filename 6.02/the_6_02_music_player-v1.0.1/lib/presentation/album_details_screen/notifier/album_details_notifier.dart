import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/songslist_item_model.dart';
import 'package:the_6_02_music_player/presentation/album_details_screen/models/album_details_model.dart';
part 'album_details_state.dart';

final albumDetailsNotifier = StateNotifierProvider<AlbumDetailsNotifier,
    AlbumDetailsState>((ref) => AlbumDetailsNotifier(AlbumDetailsState(
        albumDetailsModelObj: AlbumDetailsModel(songslistItemList: [
      SongslistItemModel(
          count: "1", burning: "Burning", podvalCaplella: "Podval Caplella"),
      SongslistItemModel(burning: "Flashbacks", podvalCaplella: "Emika"),
      SongslistItemModel(
          burning: "Renaissance", podvalCaplella: "Podval Caplella"),
      SongslistItemModel(burning: "Ivar’s Revenge", podvalCaplella: "Danheim")
    ]))));

/// A notifier that manages the state of a AlbumDetails according to the event that is dispatched to it.
class AlbumDetailsNotifier extends StateNotifier<AlbumDetailsState> {
  AlbumDetailsNotifier(AlbumDetailsState state) : super(state);
}
