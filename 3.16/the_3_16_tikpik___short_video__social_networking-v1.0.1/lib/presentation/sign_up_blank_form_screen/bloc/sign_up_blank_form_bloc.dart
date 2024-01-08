import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/sign_up_blank_form_screen/models/sign_up_blank_form_model.dart';part 'sign_up_blank_form_event.dart';part 'sign_up_blank_form_state.dart';/// A bloc that manages the state of a SignUpBlankForm according to the event that is dispatched to it.
class SignUpBlankFormBloc extends Bloc<SignUpBlankFormEvent, SignUpBlankFormState> {SignUpBlankFormBloc(SignUpBlankFormState initialState) : super(initialState) { on<SignUpBlankFormInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignUpBlankFormState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SignUpBlankFormState> emit, ) { emit(state.copyWith(rememberme: event.value)); } 
_onInitialize(SignUpBlankFormInitialEvent event, Emitter<SignUpBlankFormState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true, rememberme: false)); } 
 }
