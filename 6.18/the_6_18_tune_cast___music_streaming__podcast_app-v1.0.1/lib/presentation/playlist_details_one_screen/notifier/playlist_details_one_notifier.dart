import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/playlistdetailsone_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/playlist_details_one_screen/models/playlist_details_one_model.dart';part 'playlist_details_one_state.dart';final playlistDetailsOneNotifier = StateNotifierProvider<PlaylistDetailsOneNotifier, PlaylistDetailsOneState>((ref) => PlaylistDetailsOneNotifier(PlaylistDetailsOneState(playlistDetailsOneModelObj: PlaylistDetailsOneModel(playlistdetailsoneItemList: [PlaylistdetailsoneItemModel(image: ImageConstant.imgImage60, songTitle: "Starboy", details: "The Weeknd, Daft Punk")]))));
/// A notifier that manages the state of a PlaylistDetailsOne according to the event that is dispatched to it.
class PlaylistDetailsOneNotifier extends StateNotifier<PlaylistDetailsOneState> {PlaylistDetailsOneNotifier(PlaylistDetailsOneState state) : super(state);

 }
