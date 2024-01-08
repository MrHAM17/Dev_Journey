import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/send_message_screen/models/send_message_model.dart';part 'send_message_state.dart';final sendMessageNotifier = StateNotifierProvider<SendMessageNotifier, SendMessageState>((ref) => SendMessageNotifier(SendMessageState(messageController: TextEditingController(), sendMessageModelObj: SendMessageModel())));
/// A notifier that manages the state of a SendMessage according to the event that is dispatched to it.
class SendMessageNotifier extends StateNotifier<SendMessageState> {SendMessageNotifier(SendMessageState state) : super(state);

 }
