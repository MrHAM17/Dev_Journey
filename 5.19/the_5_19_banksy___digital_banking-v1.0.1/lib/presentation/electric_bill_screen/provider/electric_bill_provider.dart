import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/electric_bill_screen/models/electric_bill_model.dart';
import '../models/electricbill_item_model.dart';

/// A provider class for the ElectricBillScreen.
///
/// This provider manages the state of the ElectricBillScreen, including the
/// current electricBillModelObj

// ignore_for_file: must_be_immutable
class ElectricBillProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController inputsController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController dateController1 = TextEditingController();

  ElectricBillModel electricBillModelObj = ElectricBillModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    addressController.dispose();
    phoneController.dispose();
    inputsController.dispose();
    dateController.dispose();
    dateController1.dispose();
  }
}
