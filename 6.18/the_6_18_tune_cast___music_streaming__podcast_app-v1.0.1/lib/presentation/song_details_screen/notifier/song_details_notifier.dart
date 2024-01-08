import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/songdetails_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/song_details_screen/models/song_details_model.dart';part 'song_details_state.dart';final songDetailsNotifier = StateNotifierProvider<SongDetailsNotifier, SongDetailsState>((ref) => SongDetailsNotifier(SongDetailsState(songDetailsModelObj: SongDetailsModel(songdetailsItemList: [SongdetailsItemModel(image: ImageConstant.imgImage60, songTitle: "Starboy", details: "The Weeknd, Daft Punk")]))));
/// A notifier that manages the state of a SongDetails according to the event that is dispatched to it.
class SongDetailsNotifier extends StateNotifier<SongDetailsState> {SongDetailsNotifier(SongDetailsState state) : super(state);

 }
