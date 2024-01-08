import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/playlistdetailsone_item_model.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/playlist_details_one_screen/models/playlist_details_one_model.dart';part 'playlist_details_one_event.dart';part 'playlist_details_one_state.dart';/// A bloc that manages the state of a PlaylistDetailsOne according to the event that is dispatched to it.
class PlaylistDetailsOneBloc extends Bloc<PlaylistDetailsOneEvent, PlaylistDetailsOneState> {PlaylistDetailsOneBloc(PlaylistDetailsOneState initialState) : super(initialState) { on<PlaylistDetailsOneInitialEvent>(_onInitialize); }

_onInitialize(PlaylistDetailsOneInitialEvent event, Emitter<PlaylistDetailsOneState> emit, ) async  { emit(state.copyWith(playlistDetailsOneModelObj: state.playlistDetailsOneModelObj?.copyWith(playlistdetailsoneItemList: fillPlaylistdetailsoneItemList()))); } 
List<PlaylistdetailsoneItemModel> fillPlaylistdetailsoneItemList() { return [PlaylistdetailsoneItemModel(image: ImageConstant.imgImage60, songTitle: "Starboy", details: "The Weeknd, Daft Punk")]; } 
 }
