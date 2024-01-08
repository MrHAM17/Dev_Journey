import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/playlists_item_model.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/playlists_screen/models/playlists_model.dart';part 'playlists_event.dart';part 'playlists_state.dart';/// A bloc that manages the state of a Playlists according to the event that is dispatched to it.
class PlaylistsBloc extends Bloc<PlaylistsEvent, PlaylistsState> {PlaylistsBloc(PlaylistsState initialState) : super(initialState) { on<PlaylistsInitialEvent>(_onInitialize); }

_onInitialize(PlaylistsInitialEvent event, Emitter<PlaylistsState> emit, ) async  { emit(state.copyWith(playlistsModelObj: state.playlistsModelObj?.copyWith(playlistsItemList: fillPlaylistsItemList()))); } 
List<PlaylistsItemModel> fillPlaylistsItemList() { return [PlaylistsItemModel(addNewPlaylist: ImageConstant.imgCategoriesPlus, loremIpsum: "Add New Playlist")]; } 
 }
