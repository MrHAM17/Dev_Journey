import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/messages_box_screen/models/messages_box_model.dart';part 'messages_box_event.dart';part 'messages_box_state.dart';/// A bloc that manages the state of a MessagesBox according to the event that is dispatched to it.
class MessagesBoxBloc extends Bloc<MessagesBoxEvent, MessagesBoxState> {MessagesBoxBloc(MessagesBoxState initialState) : super(initialState) { on<MessagesBoxInitialEvent>(_onInitialize); }

_onInitialize(MessagesBoxInitialEvent event, Emitter<MessagesBoxState> emit, ) async  { emit(state.copyWith(messageController: TextEditingController())); } 
 }
