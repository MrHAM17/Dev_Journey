import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/transaction_tab_container_page/models/transaction_tab_container_model.dart';part 'transaction_tab_container_state.dart';final transactionTabContainerNotifier = StateNotifierProvider<TransactionTabContainerNotifier, TransactionTabContainerState>((ref) => TransactionTabContainerNotifier(TransactionTabContainerState(transactionTabContainerModelObj: TransactionTabContainerModel())));
/// A notifier that manages the state of a TransactionTabContainer according to the event that is dispatched to it.
class TransactionTabContainerNotifier extends StateNotifier<TransactionTabContainerState> {TransactionTabContainerNotifier(TransactionTabContainerState state) : super(state);

 }
