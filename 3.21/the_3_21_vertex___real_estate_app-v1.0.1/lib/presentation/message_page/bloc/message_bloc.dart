import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/messages_item_model.dart';import 'package:the_3_21_vertex___real_estate_app/presentation/message_page/models/message_model.dart';part 'message_event.dart';part 'message_state.dart';/// A bloc that manages the state of a Message according to the event that is dispatched to it.
class MessageBloc extends Bloc<MessageEvent, MessageState> {MessageBloc(MessageState initialState) : super(initialState) { on<MessageInitialEvent>(_onInitialize); }

_onInitialize(MessageInitialEvent event, Emitter<MessageState> emit, ) async  { emit(state.copyWith(messageModelObj: state.messageModelObj?.copyWith(messagesItemList: fillMessagesItemList()))); } 
List<MessagesItemModel> fillMessagesItemList() { return [MessagesItemModel(wadeWarren: ImageConstant.imgImg48x48, wadeWarren1: "Wade Warren", message: "Oh hello Willam...", time: "23:15"), MessagesItemModel(wadeWarren: ImageConstant.imgImg1, wadeWarren1: "Cameron Williamson", message: "Hey my friend, how are you?", time: "22:10"), MessagesItemModel(wadeWarren: ImageConstant.imgImg2, wadeWarren1: "Jenny Wilson", message: "Can I meet you today?", time: "21:00"), MessagesItemModel(wadeWarren: ImageConstant.imgImg3, wadeWarren1: "Kristin Watson", message: "Can I meet you today?", time: "Yesterday"), MessagesItemModel(wadeWarren: ImageConstant.imgImg4, wadeWarren1: "Robert Fox", message: "Can I meet you today?", time: "Nov 15")]; } 
 }
