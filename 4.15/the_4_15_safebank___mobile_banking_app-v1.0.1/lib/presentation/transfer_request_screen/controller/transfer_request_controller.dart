import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/transfer_request_screen/models/transfer_request_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TransferRequestScreen.
///
/// This class manages the state of the TransferRequestScreen, including the
/// current transferRequestModelObj
class TransferRequestController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<TransferRequestModel> transferRequestModelObj = TransferRequestModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
