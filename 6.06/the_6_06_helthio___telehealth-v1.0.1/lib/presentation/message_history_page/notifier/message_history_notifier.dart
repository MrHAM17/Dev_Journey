import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/messagehistory_item_model.dart';
import 'package:the_6_06_helthio___telehealth/presentation/message_history_page/models/message_history_model.dart';
part 'message_history_state.dart';

final messageHistoryNotifier =
    StateNotifierProvider<MessageHistoryNotifier, MessageHistoryState>(
  (ref) => MessageHistoryNotifier(MessageHistoryState(
    messageHistoryModelObj: MessageHistoryModel(messagehistoryItemList: [
      MessagehistoryItemModel(
          drMarcusHorizon: ImageConstant.imgClose40x40,
          drMarcusHorizon1: "Dr. Marcus Horizon",
          iDonTHaveAny: "I don,t have any fever, but headchace...",
          oneThousandTwentyFour: "10.24",
          widget: "1")
    ]),
  )),
);

/// A notifier that manages the state of a MessageHistory according to the event that is dispatched to it.
class MessageHistoryNotifier extends StateNotifier<MessageHistoryState> {
  MessageHistoryNotifier(MessageHistoryState state) : super(state) {}
}
