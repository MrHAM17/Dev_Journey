import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/select_a_country_screen/models/select_a_country_model.dart';
part 'select_a_country_state.dart';

final selectACountryNotifier =
    StateNotifierProvider<SelectACountryNotifier, SelectACountryState>(
  (ref) => SelectACountryNotifier(SelectACountryState(
    radioGroup: '',
    selectACountryModelObj: SelectACountryModel(radioList: [
      "lbl_afghanistan",
      "lbl_albania",
      "lbl_algeria",
      "lbl_andorra",
      "lbl_angola",
      "msg_antigua_and_barbuda",
      "lbl_argentina",
      "lbl_argentina",
      "lbl_armenia",
      "lbl_australia",
      "lbl_austria",
      "lbl_azerbaijan",
      "lbl_azerbaijan"
    ]),
  )),
);

/// A notifier that manages the state of a SelectACountry according to the event that is dispatched to it.
class SelectACountryNotifier extends StateNotifier<SelectACountryState> {
  SelectACountryNotifier(SelectACountryState state) : super(state) {}

  void changeRadioButton1(String value) {
    state = state.copyWith(radioGroup: value);
  }
}
