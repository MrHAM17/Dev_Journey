import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/presentation/chat_with_doctor_screen/models/chat_with_doctor_model.dart';
part 'chat_with_doctor_state.dart';

final chatWithDoctorNotifier =
    StateNotifierProvider<ChatWithDoctorNotifier, ChatWithDoctorState>((ref) =>
        ChatWithDoctorNotifier(ChatWithDoctorState(
            messageController: TextEditingController(),
            chatWithDoctorModelObj: ChatWithDoctorModel())));

/// A notifier that manages the state of a ChatWithDoctor according to the event that is dispatched to it.
class ChatWithDoctorNotifier extends StateNotifier<ChatWithDoctorState> {
  ChatWithDoctorNotifier(ChatWithDoctorState state) : super(state);
}
