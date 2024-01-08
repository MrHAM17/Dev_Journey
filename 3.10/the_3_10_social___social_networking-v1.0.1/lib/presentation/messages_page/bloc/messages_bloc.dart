import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stories2_item_model.dart';
import '../models/messageslist_item_model.dart';
import 'package:the_3_10_social___social_networking/presentation/messages_page/models/messages_model.dart';
part 'messages_event.dart';
part 'messages_state.dart';

/// A bloc that manages the state of a Messages according to the event that is dispatched to it.
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc(MessagesState initialState) : super(initialState) {
    on<MessagesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessagesInitialEvent event,
    Emitter<MessagesState> emit,
  ) async {
    emit(state.copyWith(
        messagesModelObj: state.messagesModelObj?.copyWith(
            stories2ItemList: fillStories2ItemList(),
            messageslistItemList: fillMessageslistItemList())));
  }

  List<Stories2ItemModel> fillStories2ItemList() {
    return [
      Stories2ItemModel(roy: ImageConstant.imgEllipse15, roy1: "Roy"),
      Stories2ItemModel(roy: ImageConstant.imgEllipse22, roy1: "Jordan"),
      Stories2ItemModel(roy: ImageConstant.imgEllipse24, roy1: "Angeline"),
      Stories2ItemModel(roy: ImageConstant.imgEllipse26, roy1: "Chrystin"),
      Stories2ItemModel(roy: ImageConstant.imgEllipse28, roy1: "Vrindha"),
      Stories2ItemModel(roy: ImageConstant.imgEllipse24, roy1: "Vrindha")
    ];
  }

  List<MessageslistItemModel> fillMessageslistItemList() {
    return [
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
    ];
  }
}
