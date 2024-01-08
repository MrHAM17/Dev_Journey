import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/profileaddressdetails_item_model.dart';
import 'package:the_6_08_shopsie___e_commerce_app/presentation/profile_address_details_page/models/profile_address_details_model.dart';
part 'profile_address_details_state.dart';

final profileAddressDetailsNotifier = StateNotifierProvider<
    ProfileAddressDetailsNotifier, ProfileAddressDetailsState>(
  (ref) => ProfileAddressDetailsNotifier(ProfileAddressDetailsState(
    addressController: TextEditingController(),
    addressController1: TextEditingController(),
    cityController: TextEditingController(),
    postalCodeController: TextEditingController(),
    phoneNumberController: TextEditingController(),
    profileAddressDetailsModelObj:
        ProfileAddressDetailsModel(profileaddressdetailsItemList: [
      ProfileaddressdetailsItemModel(
          homeAddress: "Home address",
          edit: "Edit",
          addressCounter: "Address 1",
          amoySt: " Amoy st, 592",
          addressCounter1: "Address 2",
          amoySt1: " Amoy st, 592",
          city: "City",
          losAngeles: "Los Angeles",
          postalCode: "Postal code",
          zero: "0000000"),
      ProfileaddressdetailsItemModel(
          homeAddress: "Home address",
          edit: "Edit",
          addressCounter: "Address 1",
          amoySt: " Amoy st, 592",
          addressCounter1: "Address 2",
          amoySt1: " Amoy st, 592",
          city: "City",
          losAngeles: "Los Angeles",
          postalCode: "Postal code",
          zero: "0000000")
    ]),
  )),
);

/// A notifier that manages the state of a ProfileAddressDetails according to the event that is dispatched to it.
class ProfileAddressDetailsNotifier
    extends StateNotifier<ProfileAddressDetailsState> {
  ProfileAddressDetailsNotifier(ProfileAddressDetailsState state)
      : super(state) {}
}
