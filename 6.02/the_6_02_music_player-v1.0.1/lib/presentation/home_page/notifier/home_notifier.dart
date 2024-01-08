import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/newreleaseslist_item_model.dart';
import 'package:the_6_02_music_player/presentation/home_page/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
    (ref) => HomeNotifier(HomeState(
            homeModelObj: HomeModel(newreleaseslistItemList: [
          NewreleaseslistItemModel(
              urgentSiege: ImageConstant.imgThumbnails,
              urgentSiege1: "Urgent Siege",
              damnedAnthem: "Damned Anthem"),
          NewreleaseslistItemModel(
              urgentSiege: ImageConstant.imgThumbnails181x159,
              urgentSiege1: "Urgent Siege",
              damnedAnthem: "Damned Anthem")
        ]))));

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state);
}
