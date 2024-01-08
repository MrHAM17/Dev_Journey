import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/forgot_password_methods_screen/models/forgot_password_methods_model.dart';part 'forgot_password_methods_state.dart';final forgotPasswordMethodsNotifier = StateNotifierProvider<ForgotPasswordMethodsNotifier, ForgotPasswordMethodsState>((ref) => ForgotPasswordMethodsNotifier(ForgotPasswordMethodsState(forgotPasswordMethodsModelObj: ForgotPasswordMethodsModel())));
/// A notifier that manages the state of a ForgotPasswordMethods according to the event that is dispatched to it.
class ForgotPasswordMethodsNotifier extends StateNotifier<ForgotPasswordMethodsState> {ForgotPasswordMethodsNotifier(ForgotPasswordMethodsState state) : super(state);

 }
