import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/mobile_prepaid_one_screen/models/mobile_prepaid_one_model.dart';
import '../models/profilelist1_item_model.dart';
import '../models/fortytwo_item_model.dart';
import '../models/thirtyseven_item_model.dart';

/// A provider class for the MobilePrepaidOneScreen.
///
/// This provider manages the state of the MobilePrepaidOneScreen, including the
/// current mobilePrepaidOneModelObj

// ignore_for_file: must_be_immutable
class MobilePrepaidOneProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  MobilePrepaidOneModel mobilePrepaidOneModelObj = MobilePrepaidOneModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }
}
