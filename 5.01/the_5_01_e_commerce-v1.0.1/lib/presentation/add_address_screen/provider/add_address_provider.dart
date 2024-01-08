import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/add_address_screen/models/add_address_model.dart';/// A provider class for the AddAddressScreen.
///
/// This provider manages the state of the AddAddressScreen, including the
/// current addAddressModelObj

// ignore_for_file: must_be_immutable
class AddAddressProvider extends ChangeNotifier {TextEditingController countryController = TextEditingController();

TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController streetaddressController = TextEditingController();

TextEditingController streetaddressController1 = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController oldPasswordController = TextEditingController();

TextEditingController zipcodeController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

AddAddressModel addAddressModelObj = AddAddressModel();

@override void dispose() { super.dispose(); countryController.dispose(); firstNameController.dispose(); lastNameController.dispose(); streetaddressController.dispose(); streetaddressController1.dispose(); cityController.dispose(); oldPasswordController.dispose(); zipcodeController.dispose(); phoneNumberController.dispose(); } 
 }
