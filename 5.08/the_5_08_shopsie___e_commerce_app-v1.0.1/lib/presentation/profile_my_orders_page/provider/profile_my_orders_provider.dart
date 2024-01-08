import 'package:flutter/material.dart';
import 'package:the_5_08_shopsie___e_commerce_app/core/app_export.dart';
import 'package:the_5_08_shopsie___e_commerce_app/presentation/profile_my_orders_page/models/profile_my_orders_model.dart';
import '../models/orderslist_item_model.dart';

/// A provider class for the ProfileMyOrdersPage.
///
/// This provider manages the state of the ProfileMyOrdersPage, including the
/// current profileMyOrdersModelObj

// ignore_for_file: must_be_immutable
class ProfileMyOrdersProvider extends ChangeNotifier {
  ProfileMyOrdersModel profileMyOrdersModelObj = ProfileMyOrdersModel();

  @override
  void dispose() {
    super.dispose();
  }
}
