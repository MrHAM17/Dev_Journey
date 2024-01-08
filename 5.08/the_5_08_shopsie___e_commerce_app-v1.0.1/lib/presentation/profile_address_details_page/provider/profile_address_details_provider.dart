import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/presentation/profile_address_details_page/models/profile_address_details_model.dart';
import '../models/profileaddressdetails_item_model.dart';

/// A provider class for the ProfileAddressDetailsPage.
///
/// This provider manages the state of the ProfileAddressDetailsPage, including the
/// current profileAddressDetailsModelObj

// ignore_for_file: must_be_immutable
class ProfileAddressDetailsProvider extends ChangeNotifier {
  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController postalCodeController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  ProfileAddressDetailsModel profileAddressDetailsModelObj =
      ProfileAddressDetailsModel();

  @override
  void dispose() {
    super.dispose();
    addressController.dispose();
    addressController1.dispose();
    cityController.dispose();
    postalCodeController.dispose();
    phoneNumberController.dispose();
  }
}
