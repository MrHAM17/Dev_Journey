import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_16_tikpik___short_video__social_networking/presentation/manage_accounts_screen/models/manage_accounts_model.dart';part 'manage_accounts_state.dart';final manageAccountsNotifier = StateNotifierProvider<ManageAccountsNotifier, ManageAccountsState>((ref) => ManageAccountsNotifier(ManageAccountsState(manageAccountsModelObj: ManageAccountsModel())));
/// A notifier that manages the state of a ManageAccounts according to the event that is dispatched to it.
class ManageAccountsNotifier extends StateNotifier<ManageAccountsState> {ManageAccountsNotifier(ManageAccountsState state) : super(state);

 }
