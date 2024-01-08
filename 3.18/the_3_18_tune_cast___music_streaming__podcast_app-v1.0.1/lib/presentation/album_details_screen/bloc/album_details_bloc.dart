import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/albumdetails_item_model.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/album_details_screen/models/album_details_model.dart';part 'album_details_event.dart';part 'album_details_state.dart';/// A bloc that manages the state of a AlbumDetails according to the event that is dispatched to it.
class AlbumDetailsBloc extends Bloc<AlbumDetailsEvent, AlbumDetailsState> {AlbumDetailsBloc(AlbumDetailsState initialState) : super(initialState) { on<AlbumDetailsInitialEvent>(_onInitialize); }

_onInitialize(AlbumDetailsInitialEvent event, Emitter<AlbumDetailsState> emit, ) async  { emit(state.copyWith(albumDetailsModelObj: state.albumDetailsModelObj?.copyWith(albumdetailsItemList: fillAlbumdetailsItemList()))); } 
List<AlbumdetailsItemModel> fillAlbumdetailsItemList() { return [AlbumdetailsItemModel(image: ImageConstant.imgImage60, songTitle: "Starboy", details: "The Weeknd, Daft Punk")]; } 
 }
