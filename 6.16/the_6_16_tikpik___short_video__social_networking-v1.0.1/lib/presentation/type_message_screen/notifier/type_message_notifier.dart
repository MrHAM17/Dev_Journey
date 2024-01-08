import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/type_message_screen/models/type_message_model.dart';part 'type_message_state.dart';final typeMessageNotifier = StateNotifierProvider<TypeMessageNotifier, TypeMessageState>((ref) => TypeMessageNotifier(TypeMessageState(userController: TextEditingController(), typeMessageModelObj: TypeMessageModel())));
/// A notifier that manages the state of a TypeMessage according to the event that is dispatched to it.
class TypeMessageNotifier extends StateNotifier<TypeMessageState> {TypeMessageNotifier(TypeMessageState state) : super(state);

 }
