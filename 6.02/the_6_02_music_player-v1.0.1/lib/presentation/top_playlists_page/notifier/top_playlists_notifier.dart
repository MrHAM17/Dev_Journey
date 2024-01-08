import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/topplaylist_item_model.dart';
import 'package:the_6_02_music_player/presentation/top_playlists_page/models/top_playlists_model.dart';
part 'top_playlists_state.dart';

final topPlaylistsNotifier =
    StateNotifierProvider<TopPlaylistsNotifier, TopPlaylistsState>(
        (ref) => TopPlaylistsNotifier(TopPlaylistsState(
                topPlaylistsModelObj: TopPlaylistsModel(topplaylistItemList: [
              TopplaylistItemModel(
                  renaissance: ImageConstant.imgPlaylistBackground,
                  renaissance1: "Renaissance",
                  tracksCounter: "843 tracks",
                  duration: "23 hours"),
              TopplaylistItemModel(
                  renaissance: ImageConstant.imgPlaylistBackground181x342,
                  renaissance1: "Radiance",
                  tracksCounter: "843 tracks",
                  duration: "23 hours"),
              TopplaylistItemModel(
                  renaissance: ImageConstant.imgPlaylistBackground1,
                  renaissance1: "Urgent Siege",
                  tracksCounter: "843 tracks",
                  duration: "23 hours")
            ]))));

/// A notifier that manages the state of a TopPlaylists according to the event that is dispatched to it.
class TopPlaylistsNotifier extends StateNotifier<TopPlaylistsState> {
  TopPlaylistsNotifier(TopPlaylistsState state) : super(state);
}
