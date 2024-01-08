import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/renaissance_item_model.dart';
import 'package:the_6_02_music_player/presentation/artist_screen/models/artist_model.dart';
part 'artist_state.dart';

final artistNotifier = StateNotifierProvider<ArtistNotifier, ArtistState>(
    (ref) => ArtistNotifier(ArtistState(
            artistModelObj: ArtistModel(renaissanceItemList: [
          RenaissanceItemModel(
              urgentSiege: ImageConstant.imgThumbnails,
              urgentSiege1: "Urgent Siege",
              damnedAnthem: "Damned Anthem"),
          RenaissanceItemModel(
              urgentSiege: ImageConstant.imgThumbnails181x159,
              urgentSiege1: "Urgent Siege",
              damnedAnthem: "Damned Anthem")
        ]))));

/// A notifier that manages the state of a Artist according to the event that is dispatched to it.
class ArtistNotifier extends StateNotifier<ArtistState> {
  ArtistNotifier(ArtistState state) : super(state);
}
