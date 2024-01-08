import 'package:flutter/material.dart';
import 'package:the_5_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_5_15_safebank___mobile_banking_app/presentation/mine_page/models/mine_model.dart';
import '../models/thirtytwo_item_model.dart';
import '../models/fifteen_item_model.dart';

/// A provider class for the MinePage.
///
/// This provider manages the state of the MinePage, including the
/// current mineModelObj

// ignore_for_file: must_be_immutable
class MineProvider extends ChangeNotifier {
  MineModel mineModelObj = MineModel();

  @override
  void dispose() {
    super.dispose();
  }
}
