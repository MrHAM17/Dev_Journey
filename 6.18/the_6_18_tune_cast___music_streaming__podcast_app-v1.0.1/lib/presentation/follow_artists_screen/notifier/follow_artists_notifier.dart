import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/followartists_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/follow_artists_screen/models/follow_artists_model.dart';part 'follow_artists_state.dart';final followArtistsNotifier = StateNotifierProvider<FollowArtistsNotifier, FollowArtistsState>((ref) => FollowArtistsNotifier(FollowArtistsState(followArtistsModelObj: FollowArtistsModel(followartistsItemList: [FollowartistsItemModel(theWeeknd: ImageConstant.imgEllipse1, artistName: "The Weeknd"), FollowartistsItemModel(theWeeknd: ImageConstant.imgEllipse4, artistName: "Ryan Jones")]))));
/// A notifier that manages the state of a FollowArtists according to the event that is dispatched to it.
class FollowArtistsNotifier extends StateNotifier<FollowArtistsState> {FollowArtistsNotifier(FollowArtistsState state) : super(state);

 }
