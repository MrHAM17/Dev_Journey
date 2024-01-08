import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/playlists_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/playlists_screen/models/playlists_model.dart';part 'playlists_state.dart';final playlistsNotifier = StateNotifierProvider<PlaylistsNotifier, PlaylistsState>((ref) => PlaylistsNotifier(PlaylistsState(playlistsModelObj: PlaylistsModel(playlistsItemList: [PlaylistsItemModel(addNewPlaylist: ImageConstant.imgCategoriesPlus, loremIpsum: "Add New Playlist")]))));
/// A notifier that manages the state of a Playlists according to the event that is dispatched to it.
class PlaylistsNotifier extends StateNotifier<PlaylistsState> {PlaylistsNotifier(PlaylistsState state) : super(state);

 }
