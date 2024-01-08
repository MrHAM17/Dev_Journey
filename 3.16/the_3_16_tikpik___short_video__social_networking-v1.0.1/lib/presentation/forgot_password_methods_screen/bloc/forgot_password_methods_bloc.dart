import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/forgot_password_methods_screen/models/forgot_password_methods_model.dart';part 'forgot_password_methods_event.dart';part 'forgot_password_methods_state.dart';/// A bloc that manages the state of a ForgotPasswordMethods according to the event that is dispatched to it.
class ForgotPasswordMethodsBloc extends Bloc<ForgotPasswordMethodsEvent, ForgotPasswordMethodsState> {ForgotPasswordMethodsBloc(ForgotPasswordMethodsState initialState) : super(initialState) { on<ForgotPasswordMethodsInitialEvent>(_onInitialize); }

_onInitialize(ForgotPasswordMethodsInitialEvent event, Emitter<ForgotPasswordMethodsState> emit, ) async  {  } 
 }
