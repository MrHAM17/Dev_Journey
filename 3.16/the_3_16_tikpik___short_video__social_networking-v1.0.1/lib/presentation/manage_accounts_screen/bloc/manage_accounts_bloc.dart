import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/presentation/manage_accounts_screen/models/manage_accounts_model.dart';part 'manage_accounts_event.dart';part 'manage_accounts_state.dart';/// A bloc that manages the state of a ManageAccounts according to the event that is dispatched to it.
class ManageAccountsBloc extends Bloc<ManageAccountsEvent, ManageAccountsState> {ManageAccountsBloc(ManageAccountsState initialState) : super(initialState) { on<ManageAccountsInitialEvent>(_onInitialize); }

_onInitialize(ManageAccountsInitialEvent event, Emitter<ManageAccountsState> emit, ) async  {  } 
 }
