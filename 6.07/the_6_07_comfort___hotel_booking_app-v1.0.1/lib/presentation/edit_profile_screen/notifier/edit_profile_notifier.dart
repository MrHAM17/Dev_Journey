import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:the_6_07_comfort___hotel_booking_app/presentation/edit_profile_screen/models/edit_profile_model.dart';
part 'edit_profile_state.dart';

final editProfileNotifier =
    StateNotifierProvider<EditProfileNotifier, EditProfileState>(
  (ref) => EditProfileNotifier(EditProfileState(
    labelController: TextEditingController(),
    labelController1: TextEditingController(),
    dateController: TextEditingController(),
    emailController: TextEditingController(),
    phoneNumberController: TextEditingController(),
    selectedDropDownValue: SelectionPopupModel(title: ''),
    selectedDropDownValue1: SelectionPopupModel(title: ''),
    selectedCountry: CountryPickerUtils.getCountryByPhoneCode('1'),
    editProfileModelObj: EditProfileModel(dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ], dropdownItemList1: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ]),
  )),
);

/// A notifier that manages the state of a EditProfile according to the event that is dispatched to it.
class EditProfileNotifier extends StateNotifier<EditProfileState> {
  EditProfileNotifier(EditProfileState state) : super(state) {}
}
