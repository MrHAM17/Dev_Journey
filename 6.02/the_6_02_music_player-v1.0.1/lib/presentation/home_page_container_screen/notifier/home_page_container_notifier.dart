import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_02_music_player/presentation/home_page_container_screen/models/home_page_container_model.dart';
part 'home_page_container_state.dart';

final homePageContainerNotifier =
    StateNotifierProvider<HomePageContainerNotifier, HomePageContainerState>(
        (ref) => HomePageContainerNotifier(HomePageContainerState(
            homePageContainerModelObj: HomePageContainerModel())));

/// A notifier that manages the state of a HomePageContainer according to the event that is dispatched to it.
class HomePageContainerNotifier extends StateNotifier<HomePageContainerState> {
  HomePageContainerNotifier(HomePageContainerState state) : super(state);
}
