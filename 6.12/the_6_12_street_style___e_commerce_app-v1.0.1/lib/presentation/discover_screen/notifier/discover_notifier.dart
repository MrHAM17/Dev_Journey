import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/discover_item_model.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/discover_screen/models/discover_model.dart';
part 'discover_state.dart';

final discoverNotifier = StateNotifierProvider<DiscoverNotifier, DiscoverState>(
    (ref) => DiscoverNotifier(DiscoverState(
            discoverModelObj: DiscoverModel(discoverItemList: [
          DiscoverItemModel(shirtSleeve: ImageConstant.imgImage2),
          DiscoverItemModel(shirtSleeve: ImageConstant.imgImage3)
        ]))));

/// A notifier that manages the state of a Discover according to the event that is dispatched to it.
class DiscoverNotifier extends StateNotifier<DiscoverState> {
  DiscoverNotifier(DiscoverState state) : super(state);
}
