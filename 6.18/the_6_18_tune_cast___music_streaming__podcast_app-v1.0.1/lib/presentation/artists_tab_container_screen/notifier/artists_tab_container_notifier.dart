import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/artists_tab_container_screen/models/artists_tab_container_model.dart';part 'artists_tab_container_state.dart';final artistsTabContainerNotifier = StateNotifierProvider<ArtistsTabContainerNotifier, ArtistsTabContainerState>((ref) => ArtistsTabContainerNotifier(ArtistsTabContainerState(artistsTabContainerModelObj: ArtistsTabContainerModel())));
/// A notifier that manages the state of a ArtistsTabContainer according to the event that is dispatched to it.
class ArtistsTabContainerNotifier extends StateNotifier<ArtistsTabContainerState> {ArtistsTabContainerNotifier(ArtistsTabContainerState state) : super(state);

 }
