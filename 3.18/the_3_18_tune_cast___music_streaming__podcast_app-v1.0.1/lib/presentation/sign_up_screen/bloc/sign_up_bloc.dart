import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_18_tune_cast___music_streaming__podcast_app/presentation/sign_up_screen/models/sign_up_model.dart';part 'sign_up_event.dart';part 'sign_up_state.dart';/// A bloc that manages the state of a SignUp according to the event that is dispatched to it.
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {SignUpBloc(SignUpState initialState) : super(initialState) { on<SignUpInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignUpState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SignUpState> emit, ) { emit(state.copyWith(rememberme: event.value)); } 
_onInitialize(SignUpInitialEvent event, Emitter<SignUpState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true, rememberme: false));NavigatorService.pushNamed(AppRoutes.letsYouInScreen, ); } 
 }
