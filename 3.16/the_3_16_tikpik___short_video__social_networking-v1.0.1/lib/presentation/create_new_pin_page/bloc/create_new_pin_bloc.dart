import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/create_new_pin_page/models/create_new_pin_model.dart';part 'create_new_pin_event.dart';part 'create_new_pin_state.dart';/// A bloc that manages the state of a CreateNewPin according to the event that is dispatched to it.
class CreateNewPinBloc extends Bloc<CreateNewPinEvent, CreateNewPinState> {CreateNewPinBloc(CreateNewPinState initialState) : super(initialState) { on<CreateNewPinInitialEvent>(_onInitialize); }

_onInitialize(CreateNewPinInitialEvent event, Emitter<CreateNewPinState> emit, ) async  {  } 
 }
