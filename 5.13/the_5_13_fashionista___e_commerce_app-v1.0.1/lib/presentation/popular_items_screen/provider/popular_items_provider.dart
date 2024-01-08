import 'package:flutter/material.dart';
import 'package:the_5_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_5_13_fashionista___e_commerce_app/presentation/popular_items_screen/models/popular_items_model.dart';
import '../models/popularitems_item_model.dart';

/// A provider class for the PopularItemsScreen.
///
/// This provider manages the state of the PopularItemsScreen, including the
/// current popularItemsModelObj

// ignore_for_file: must_be_immutable
class PopularItemsProvider extends ChangeNotifier {
  PopularItemsModel popularItemsModelObj = PopularItemsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
