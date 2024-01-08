import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/create_new_pin_screen/models/create_new_pin_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'create_new_pin_state.dart';final createNewPinNotifier = StateNotifierProvider<CreateNewPinNotifier, CreateNewPinState>((ref) => CreateNewPinNotifier(CreateNewPinState(otpController: TextEditingController(), createNewPinModelObj: CreateNewPinModel())));
/// A notifier that manages the state of a CreateNewPin according to the event that is dispatched to it.
class CreateNewPinNotifier extends StateNotifier<CreateNewPinState> with  CodeAutoFill {CreateNewPinNotifier(CreateNewPinState state) : super(state);

@override void codeUpdated() { state.otpController?.text = code ?? ''; } 
 }
