import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_17_housit___buyrentsell_property/presentation/user_success_bottomsheet/models/user_success_model.dart';
part 'user_success_state.dart';

final userSuccessNotifier =
    StateNotifierProvider<UserSuccessNotifier, UserSuccessState>(
  (ref) => UserSuccessNotifier(UserSuccessState(
    userSuccessModelObj: UserSuccessModel(),
  )),
);

/// A notifier that manages the state of a UserSuccess according to the event that is dispatched to it.
class UserSuccessNotifier extends StateNotifier<UserSuccessState> {
  UserSuccessNotifier(UserSuccessState state) : super(state) {}
}
