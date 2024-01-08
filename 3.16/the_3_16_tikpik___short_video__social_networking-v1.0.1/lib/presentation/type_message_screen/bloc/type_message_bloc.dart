import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/type_message_screen/models/type_message_model.dart';part 'type_message_event.dart';part 'type_message_state.dart';/// A bloc that manages the state of a TypeMessage according to the event that is dispatched to it.
class TypeMessageBloc extends Bloc<TypeMessageEvent, TypeMessageState> {TypeMessageBloc(TypeMessageState initialState) : super(initialState) { on<TypeMessageInitialEvent>(_onInitialize); }

_onInitialize(TypeMessageInitialEvent event, Emitter<TypeMessageState> emit, ) async  { emit(state.copyWith(userController: TextEditingController())); } 
 }
