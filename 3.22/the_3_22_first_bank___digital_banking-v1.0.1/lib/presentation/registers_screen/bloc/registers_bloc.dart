import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_3_22_first_bank___digital_banking/presentation/registers_screen/models/registers_model.dart';
part 'registers_event.dart';
part 'registers_state.dart';

/// A bloc that manages the state of a Registers according to the event that is dispatched to it.
class RegistersBloc extends Bloc<RegistersEvent, RegistersState> {
  RegistersBloc(RegistersState initialState) : super(initialState) {
    on<RegistersInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<RegistersState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    RegistersInitialEvent event,
    Emitter<RegistersState> emit,
  ) async {
    emit(state.copyWith(
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true));
  }
}
