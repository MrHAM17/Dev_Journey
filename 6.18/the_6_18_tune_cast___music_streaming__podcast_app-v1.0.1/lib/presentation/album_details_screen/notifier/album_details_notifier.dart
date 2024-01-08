import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/albumdetails_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/album_details_screen/models/album_details_model.dart';part 'album_details_state.dart';final albumDetailsNotifier = StateNotifierProvider<AlbumDetailsNotifier, AlbumDetailsState>((ref) => AlbumDetailsNotifier(AlbumDetailsState(albumDetailsModelObj: AlbumDetailsModel(albumdetailsItemList: [AlbumdetailsItemModel(image: ImageConstant.imgImage60, songTitle: "Starboy", details: "The Weeknd, Daft Punk")]))));
/// A notifier that manages the state of a AlbumDetails according to the event that is dispatched to it.
class AlbumDetailsNotifier extends StateNotifier<AlbumDetailsState> {AlbumDetailsNotifier(AlbumDetailsState state) : super(state);

 }
