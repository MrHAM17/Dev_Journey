import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/artistdetails_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/artist_details_screen/models/artist_details_model.dart';part 'artist_details_state.dart';final artistDetailsNotifier = StateNotifierProvider<ArtistDetailsNotifier, ArtistDetailsState>((ref) => ArtistDetailsNotifier(ArtistDetailsState(artistDetailsModelObj: ArtistDetailsModel(artistdetailsItemList: [ArtistdetailsItemModel(image: ImageConstant.imgImage60, songTitle: "Starboy", details: "The Weeknd, Daft Punk")]))));
/// A notifier that manages the state of a ArtistDetails according to the event that is dispatched to it.
class ArtistDetailsNotifier extends StateNotifier<ArtistDetailsState> {ArtistDetailsNotifier(ArtistDetailsState state) : super(state);

 }
