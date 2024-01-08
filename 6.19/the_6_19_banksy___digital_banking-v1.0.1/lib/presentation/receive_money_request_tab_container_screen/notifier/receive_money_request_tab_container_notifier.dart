import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/receive_money_request_tab_container_screen/models/receive_money_request_tab_container_model.dart';
part 'receive_money_request_tab_container_state.dart';

final receiveMoneyRequestTabContainerNotifier = StateNotifierProvider<
    ReceiveMoneyRequestTabContainerNotifier,
    ReceiveMoneyRequestTabContainerState>(
  (ref) => ReceiveMoneyRequestTabContainerNotifier(
      ReceiveMoneyRequestTabContainerState(
    receiveMoneyRequestTabContainerModelObj:
        ReceiveMoneyRequestTabContainerModel(),
  )),
);

/// A notifier that manages the state of a ReceiveMoneyRequestTabContainer according to the event that is dispatched to it.
class ReceiveMoneyRequestTabContainerNotifier
    extends StateNotifier<ReceiveMoneyRequestTabContainerState> {
  ReceiveMoneyRequestTabContainerNotifier(
      ReceiveMoneyRequestTabContainerState state)
      : super(state) {}
}
