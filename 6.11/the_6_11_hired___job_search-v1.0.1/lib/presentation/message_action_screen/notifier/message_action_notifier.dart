import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/messageaction_item_model.dart';
import 'package:the_6_11_hired___job_search/presentation/message_action_screen/models/message_action_model.dart';
part 'message_action_state.dart';

final messageActionNotifier =
    StateNotifierProvider<MessageActionNotifier, MessageActionState>(
        (ref) => MessageActionNotifier(MessageActionState(
            searchController: TextEditingController(),
            messageActionModelObj: MessageActionModel(messageactionItemList: [
              MessageactionItemModel(
                  estherHoward: ImageConstant.imgImage56x56,
                  estherHoward1: "Esther Howard",
                  loremIpsumDolor: "Lorem ipsum dolor sit amet...",
                  time: "10:20",
                  widget: "2"),
              MessageactionItemModel(
                  estherHoward1: "Wade Warren",
                  loremIpsumDolor: "Lorem ipsum dolor sit amet...",
                  time: "10:20",
                  widget: "2"),
              MessageactionItemModel(
                  estherHoward1: "Robert Fox",
                  loremIpsumDolor: "Lorem ipsum dolor sit amet...")
            ]))));

/// A notifier that manages the state of a MessageAction according to the event that is dispatched to it.
class MessageActionNotifier extends StateNotifier<MessageActionState> {
  MessageActionNotifier(MessageActionState state) : super(state);
}
