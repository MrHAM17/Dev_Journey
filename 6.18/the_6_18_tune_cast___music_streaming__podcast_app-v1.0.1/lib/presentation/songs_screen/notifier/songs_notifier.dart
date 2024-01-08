import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/songs_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/songs_screen/models/songs_model.dart';part 'songs_state.dart';final songsNotifier = StateNotifierProvider<SongsNotifier, SongsState>((ref) => SongsNotifier(SongsState(songsModelObj: SongsModel(songsItemList: [SongsItemModel(image: ImageConstant.imgImage61, songTitle: "Starboy Speed Up", details: "Just Lowkey"), SongsItemModel(image: ImageConstant.imgImage63, songTitle: "Blinding Lights", details: "The Weeknd")]))));
/// A notifier that manages the state of a Songs according to the event that is dispatched to it.
class SongsNotifier extends StateNotifier<SongsState> {SongsNotifier(SongsState state) : super(state);

 }
