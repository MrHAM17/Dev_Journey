import 'package:flutter/material.dart';
import 'package:the_5_22_first_bank___digital_banking/core/app_export.dart';
import 'package:the_5_22_first_bank___digital_banking/presentation/home_screen/models/home_model.dart';
import '../models/balance_item_model.dart';
import '../models/liviabator_item_model.dart';

/// A provider class for the HomeScreen.
///
/// This provider manages the state of the HomeScreen, including the
/// current homeModelObj

// ignore_for_file: must_be_immutable
class HomeProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomeModel homeModelObj = HomeModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
