import 'package:the_4_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_4_22_first_bank___digital_banking/presentation/services_screen/models/services_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ServicesScreen.
///
/// This class manages the state of the ServicesScreen, including the
/// current servicesModelObj
class ServicesController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ServicesModel> servicesModelObj = ServicesModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
