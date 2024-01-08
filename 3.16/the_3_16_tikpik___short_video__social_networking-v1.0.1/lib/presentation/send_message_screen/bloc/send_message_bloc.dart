import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/send_message_screen/models/send_message_model.dart';part 'send_message_event.dart';part 'send_message_state.dart';/// A bloc that manages the state of a SendMessage according to the event that is dispatched to it.
class SendMessageBloc extends Bloc<SendMessageEvent, SendMessageState> {SendMessageBloc(SendMessageState initialState) : super(initialState) { on<SendMessageInitialEvent>(_onInitialize); }

_onInitialize(SendMessageInitialEvent event, Emitter<SendMessageState> emit, ) async  { emit(state.copyWith(messageController: TextEditingController())); } 
 }
