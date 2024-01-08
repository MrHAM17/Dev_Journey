import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/favorites_item_model.dart';
import 'package:the_6_02_music_player/presentation/favorites_page/models/favorites_model.dart';
part 'favorites_state.dart';

final favoritesNotifier =
    StateNotifierProvider<FavoritesNotifier, FavoritesState>(
        (ref) => FavoritesNotifier(FavoritesState(
                favoritesModelObj: FavoritesModel(favoritesItemList: [
              FavoritesItemModel(
                  tracks: ImageConstant.imgIconsOnprimarycontainer24x24,
                  addToPlaylist: "Tracks"),
              FavoritesItemModel(
                  tracks: ImageConstant.imgLock, addToPlaylist: "Artist"),
              FavoritesItemModel(
                  tracks: ImageConstant.imgIcons, addToPlaylist: "Album"),
              FavoritesItemModel(
                  tracks: ImageConstant.imgIconsOnprimarycontainer,
                  addToPlaylist: "Playlists"),
              FavoritesItemModel(
                  tracks: ImageConstant.imgDownload, addToPlaylist: "Download")
            ]))));

/// A notifier that manages the state of a Favorites according to the event that is dispatched to it.
class FavoritesNotifier extends StateNotifier<FavoritesState> {
  FavoritesNotifier(FavoritesState state) : super(state);
}
