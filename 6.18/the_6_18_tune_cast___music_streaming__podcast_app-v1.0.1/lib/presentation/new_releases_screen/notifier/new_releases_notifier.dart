import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/newreleases_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/new_releases_screen/models/new_releases_model.dart';part 'new_releases_state.dart';final newReleasesNotifier = StateNotifierProvider<NewReleasesNotifier, NewReleasesState>((ref) => NewReleasesNotifier(NewReleasesState(newReleasesModelObj: NewReleasesModel(newreleasesItemList: [NewreleasesItemModel(positions: ImageConstant.imgImage184x184, positions1: "Positions", arianaGrande: "Ariana Grande"), NewreleasesItemModel(positions: ImageConstant.imgImage41, positions1: "Motomami", arianaGrande: "The Weeknd")]))));
/// A notifier that manages the state of a NewReleases according to the event that is dispatched to it.
class NewReleasesNotifier extends StateNotifier<NewReleasesState> {NewReleasesNotifier(NewReleasesState state) : super(state);

 }
