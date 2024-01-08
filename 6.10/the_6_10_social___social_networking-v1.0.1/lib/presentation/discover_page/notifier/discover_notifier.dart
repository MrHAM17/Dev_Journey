import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profiles_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/discover_page/models/discover_model.dart';
part 'discover_state.dart';

final discoverNotifier = StateNotifierProvider<DiscoverNotifier, DiscoverState>(
  (ref) => DiscoverNotifier(DiscoverState(
    discoverModelObj: DiscoverModel(profilesItemList: [
      ProfilesItemModel(
          nineteen: ImageConstant.img19, agnessMonica: "Agness Monica"),
      ProfilesItemModel(nineteen: ImageConstant.img19179x147),
      ProfilesItemModel(
          nineteen: ImageConstant.img191, agnessMonica: "Windy Wandah")
    ]),
  )),
);

/// A notifier that manages the state of a Discover according to the event that is dispatched to it.
class DiscoverNotifier extends StateNotifier<DiscoverState> {
  DiscoverNotifier(DiscoverState state) : super(state) {}
}
