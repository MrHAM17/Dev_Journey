import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/mine_page_container_screen/models/mine_page_container_model.dart';
part 'mine_page_container_state.dart';

final minePageContainerNotifier =
    StateNotifierProvider<MinePageContainerNotifier, MinePageContainerState>(
        (ref) => MinePageContainerNotifier(MinePageContainerState(
            minePageContainerModelObj: MinePageContainerModel())));

/// A notifier that manages the state of a MinePageContainer according to the event that is dispatched to it.
class MinePageContainerNotifier extends StateNotifier<MinePageContainerState> {
  MinePageContainerNotifier(MinePageContainerState state) : super(state);
}
