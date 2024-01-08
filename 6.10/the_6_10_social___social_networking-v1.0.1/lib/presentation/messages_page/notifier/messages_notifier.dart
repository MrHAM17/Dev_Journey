import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stories2_item_model.dart';
import '../models/messageslist_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/messages_page/models/messages_model.dart';
part 'messages_state.dart';

final messagesNotifier = StateNotifierProvider<MessagesNotifier, MessagesState>(
    (ref) => MessagesNotifier(MessagesState(
            messagesModelObj: MessagesModel(stories2ItemList: [
          Stories2ItemModel(roy: ImageConstant.imgEllipse15, roy1: "Roy"),
          Stories2ItemModel(roy: ImageConstant.imgEllipse22, roy1: "Jordan"),
          Stories2ItemModel(roy: ImageConstant.imgEllipse24, roy1: "Angeline"),
          Stories2ItemModel(roy: ImageConstant.imgEllipse26, roy1: "Chrystin"),
          Stories2ItemModel(roy: ImageConstant.imgEllipse28, roy1: "Vrindha"),
          Stories2ItemModel(roy: ImageConstant.imgEllipse24, roy1: "Vrindha")
        ], messageslistItemList: [
          MessageslistItemModel(
              richardAlves: "Richard Alves",
              heyBroWhereAre: "Hey bro, where are you?",
              time: "10:00 AM"),
          MessageslistItemModel(
              richardAlves: "Richard Alves",
              heyBroWhereAre: "Hey bro, where are you?",
              time: "10:00 AM"),
          MessageslistItemModel(
              richardAlves: "Richard Alves",
              heyBroWhereAre: "Hey bro, where are you?",
              time: "10:00 AM"),
          MessageslistItemModel(
              richardAlves: "Richard Alves",
              heyBroWhereAre: "Hey bro, where are you?",
              time: "10:00 AM"),
          MessageslistItemModel(
              richardAlves: "Richard Alves",
              heyBroWhereAre: "Hey bro, where are you?",
              time: "10:00 AM")
        ]))));

/// A notifier that manages the state of a Messages according to the event that is dispatched to it.
class MessagesNotifier extends StateNotifier<MessagesState> {
  MessagesNotifier(MessagesState state) : super(state);
}
