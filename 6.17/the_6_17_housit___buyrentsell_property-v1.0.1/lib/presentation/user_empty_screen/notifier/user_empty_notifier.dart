import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/user_empty_screen/models/user_empty_model.dart';part 'user_empty_state.dart';final userEmptyNotifier = StateNotifierProvider<UserEmptyNotifier, UserEmptyState>((ref) => UserEmptyNotifier(UserEmptyState(lockController: TextEditingController(), mobileNumberController: TextEditingController(), emailController: TextEditingController(), userEmptyModelObj: UserEmptyModel())));
/// A notifier that manages the state of a UserEmpty according to the event that is dispatched to it.
class UserEmptyNotifier extends StateNotifier<UserEmptyState> {UserEmptyNotifier(UserEmptyState state) : super(state);

 }
