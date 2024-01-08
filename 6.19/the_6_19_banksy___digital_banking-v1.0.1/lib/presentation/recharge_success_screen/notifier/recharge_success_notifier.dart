import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/recharge_success_screen/models/recharge_success_model.dart';
part 'recharge_success_state.dart';

final rechargeSuccessNotifier =
    StateNotifierProvider<RechargeSuccessNotifier, RechargeSuccessState>(
  (ref) => RechargeSuccessNotifier(RechargeSuccessState(
    rechargeSuccessModelObj: RechargeSuccessModel(),
  )),
);

/// A notifier that manages the state of a RechargeSuccess according to the event that is dispatched to it.
class RechargeSuccessNotifier extends StateNotifier<RechargeSuccessState> {
  RechargeSuccessNotifier(RechargeSuccessState state) : super(state) {}
}
