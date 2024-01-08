import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/presentation/mobile_prepaid_two_screen/models/mobile_prepaid_two_model.dart';
part 'mobile_prepaid_two_state.dart';

final mobilePrepaidTwoNotifier =
    StateNotifierProvider<MobilePrepaidTwoNotifier, MobilePrepaidTwoState>(
        (ref) => MobilePrepaidTwoNotifier(MobilePrepaidTwoState(
            priceController: TextEditingController(),
            mobilePrepaidTwoModelObj: MobilePrepaidTwoModel())));

/// A notifier that manages the state of a MobilePrepaidTwo according to the event that is dispatched to it.
class MobilePrepaidTwoNotifier extends StateNotifier<MobilePrepaidTwoState> {
  MobilePrepaidTwoNotifier(MobilePrepaidTwoState state) : super(state);
}
