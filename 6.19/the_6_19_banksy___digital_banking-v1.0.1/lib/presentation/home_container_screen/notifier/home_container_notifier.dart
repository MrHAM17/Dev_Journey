import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/home_container_screen/models/home_container_model.dart';
part 'home_container_state.dart';

final homeContainerNotifier =
    StateNotifierProvider<HomeContainerNotifier, HomeContainerState>((ref) =>
        HomeContainerNotifier(
            HomeContainerState(homeContainerModelObj: HomeContainerModel())));

/// A notifier that manages the state of a HomeContainer according to the event that is dispatched to it.
class HomeContainerNotifier extends StateNotifier<HomeContainerState> {
  HomeContainerNotifier(HomeContainerState state) : super(state);
}
