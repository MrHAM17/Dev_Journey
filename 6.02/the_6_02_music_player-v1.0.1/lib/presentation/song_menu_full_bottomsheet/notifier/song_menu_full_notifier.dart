import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/options_item_model.dart';
import 'package:the_6_02_music_player/presentation/song_menu_full_bottomsheet/models/song_menu_full_model.dart';
part 'song_menu_full_state.dart';

final songMenuFullNotifier =
    StateNotifierProvider<SongMenuFullNotifier, SongMenuFullState>(
        (ref) => SongMenuFullNotifier(SongMenuFullState(
                songMenuFullModelObj: SongMenuFullModel(optionsItemList: [
              OptionsItemModel(
                  addtoPlaylist: ImageConstant.imgClose,
                  addToPlaylist: "Add to Playlist"),
              OptionsItemModel(
                  addtoPlaylist: ImageConstant.imgLock,
                  addToPlaylist: "Artist"),
              OptionsItemModel(
                  addtoPlaylist: ImageConstant.imgIcons,
                  addToPlaylist: "Album"),
              OptionsItemModel(
                  addtoPlaylist: ImageConstant.imgTelevision,
                  addToPlaylist: "I don’t like it"),
              OptionsItemModel(
                  addtoPlaylist: ImageConstant.imgIconsOnprimarycontainer,
                  addToPlaylist: "Song lyrics"),
              OptionsItemModel(
                  addtoPlaylist: ImageConstant.imgDownload,
                  addToPlaylist: "Download")
            ]))));

/// A notifier that manages the state of a SongMenuFull according to the event that is dispatched to it.
class SongMenuFullNotifier extends StateNotifier<SongMenuFullState> {
  SongMenuFullNotifier(SongMenuFullState state) : super(state);
}
