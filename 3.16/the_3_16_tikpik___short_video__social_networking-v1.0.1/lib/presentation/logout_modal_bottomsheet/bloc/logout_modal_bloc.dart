import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/logout_modal_bottomsheet/models/logout_modal_model.dart';part 'logout_modal_event.dart';part 'logout_modal_state.dart';/// A bloc that manages the state of a LogoutModal according to the event that is dispatched to it.
class LogoutModalBloc extends Bloc<LogoutModalEvent, LogoutModalState> {LogoutModalBloc(LogoutModalState initialState) : super(initialState) { on<LogoutModalInitialEvent>(_onInitialize); }

_onInitialize(LogoutModalInitialEvent event, Emitter<LogoutModalState> emit, ) async  {  } 
 }
